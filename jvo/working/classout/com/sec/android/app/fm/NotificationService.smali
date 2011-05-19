.class public Lcom/sec/android/app/fm/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"


# static fields
.field static isRunning:Z

.field static keepOn:Z


# instance fields
.field private mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.fm.player"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "com.android.fm.player.on"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "com.android.fm.player.off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "com.android.fm.player.tune.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "com.android.fm.player.tune.prev"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    return-object v0
.end method

.method private registerBroadcastReceiver()V
    .registers 3

    .prologue
    .line 67
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationService;->createFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    if-eqz v0, :cond_11

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->terminate()V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    .line 78
    :cond_11
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 50
    sput-boolean v4, Lcom/sec/android/app/fm/NotificationService;->isRunning:Z

    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationService;->unregisterBroadcastReceiver()V

    .line 52
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "FM NotificationService onDestroy unregister rec"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    sget-boolean v2, Lcom/sec/android/app/fm/NotificationService;->keepOn:Z

    if-nez v2, :cond_26

    .line 56
    :try_start_14
    const-string v2, "FMPlayer"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    .line 57
    .local v1, player:Lcom/samsung/media/fmradio/FMPlayer;
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z

    .line 58
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/FMNotificationManager;->removeNotification()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_29

    .line 63
    .end local v1           #player:Lcom/samsung/media/fmradio/FMPlayer;
    :cond_26
    :goto_26
    sput-boolean v4, Lcom/sec/android/app/fm/NotificationService;->keepOn:Z

    .line 64
    return-void

    .line 59
    :catch_29
    move-exception v2

    move-object v0, v2

    .line 60
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 39
    .local v0, n:I
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationService;->registerBroadcastReceiver()V

    .line 40
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/fm/NotificationService;->isRunning:Z

    .line 41
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "FM NotificationService onStartCommand registered rec"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    return v0
.end method
