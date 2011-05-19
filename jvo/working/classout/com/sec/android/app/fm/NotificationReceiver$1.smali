.class Lcom/sec/android/app/fm/NotificationReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/NotificationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/NotificationReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/NotificationReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver$1;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    const-string v2, "command"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, cmdStr:Ljava/lang/String;
    const-string v2, "from"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, appName:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification Rec Got Music command :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    const-string v2, "com.sec.android.app.fm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "stop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 96
    :cond_46
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver$1;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v2}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver$1;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v2}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/fm/NotificationReceiver;->access$100()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    :cond_5b
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver$1;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v2}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/FMNotificationManager;->removeNotification()V

    .line 104
    :cond_68
    return-void
.end method
