.class public Lcom/sec/android/app/fm/FMNotificationManager;
.super Ljava/lang/Object;
.source "FMNotificationManager.java"


# static fields
.field private static _instance:Lcom/sec/android/app/fm/FMNotificationManager;


# instance fields
.field public isNotified:Z

.field private mContext:Landroid/content/Context;

.field mRemoteViews:Landroid/widget/RemoteViews;

.field private mUpdatePlayState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/FMNotificationManager;->_instance:Lcom/sec/android/app/fm/FMNotificationManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 38
    const-class v0, Lcom/sec/android/app/fm/FMNotificationManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sec/android/app/fm/FMNotificationManager;->_instance:Lcom/sec/android/app/fm/FMNotificationManager;

    if-nez v1, :cond_12

    .line 39
    new-instance v1, Lcom/sec/android/app/fm/FMNotificationManager;

    invoke-direct {v1}, Lcom/sec/android/app/fm/FMNotificationManager;-><init>()V

    sput-object v1, Lcom/sec/android/app/fm/FMNotificationManager;->_instance:Lcom/sec/android/app/fm/FMNotificationManager;

    .line 40
    sget-object v1, Lcom/sec/android/app/fm/FMNotificationManager;->_instance:Lcom/sec/android/app/fm/FMNotificationManager;

    iput-object p0, v1, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    .line 42
    :cond_12
    sget-object v1, Lcom/sec/android/app/fm/FMNotificationManager;->_instance:Lcom/sec/android/app/fm/FMNotificationManager;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    .line 38
    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public removeNotification()V
    .registers 6

    .prologue
    .line 150
    :try_start_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 151
    .local v1, status:Landroid/app/Notification;
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 152
    const/4 v2, 0x0

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 153
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 158
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/fm/NotificationService;->keepOn:Z

    .line 159
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.notification.service"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 161
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    .line 162
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "notification removed.."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 166
    .end local v1           #status:Landroid/app/Notification;
    :goto_35
    return-void

    .line 163
    :catch_36
    move-exception v2

    move-object v0, v2

    .line 164
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method public showNotification()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    .line 50
    return-void
.end method

.method public showNotification(Ljava/lang/String;Z)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Landroid/app/Notification;

    const v0, 0x7f02004e

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 64
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 65
    const/16 v0, 0x8

    iput v0, v1, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 67
    const-string v0, " FMNotificationManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " showNotification textToShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030006

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 69
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    const-string v0, " FMNotificationManager "

    const-string v2, " showNotification After RemoteViews "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.player"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.fm.player.tune.prev"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.fm.player.on"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 75
    iget-object v4, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.fm.player.off"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 76
    iget-object v5, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.fm.player.tune.next"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 80
    iget-object v6, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v7, 0x7f090053

    invoke-virtual {v6, v7, v0}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v6, 0x7f090054

    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v2, 0x7f090055

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v2, 0x7f090056

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v2, 0x7f090057

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v2, 0x7f090058

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v2, 0x7f090058

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 89
    const-string v0, " FMNotificationManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " showNotification After setOnClickPendingIntent mUpdatePlayState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-boolean v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    if-eqz v0, :cond_150

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v2, 0x7f090055

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v2, 0x7f090056

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 101
    :goto_113
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 106
    if-eqz p2, :cond_124

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f070016

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 108
    :cond_124
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 112
    sget-boolean v0, Lcom/sec/android/app/fm/NotificationService;->isRunning:Z

    if-nez v0, :cond_142

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.notification.service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    :cond_142
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/fm/NotificationService;->keepOn:Z

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    .line 118
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "notification done.."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    :goto_14f
    return-void

    .line 96
    :cond_150
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v2, 0x7f090056

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mRemoteViews:Landroid/widget/RemoteViews;

    const v2, 0x7f090055

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_163} :catch_164

    goto :goto_113

    .line 119
    :catch_164
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14f
.end method

.method public updatePlayButtonState(Z)V
    .registers 2
    .parameter "playState"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    .line 54
    return-void
.end method
