.class Lcom/sec/android/app/fm/NotificationReceiver$4;
.super Ljava/lang/Object;
.source "NotificationReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/NotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
    .line 401
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver$4;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$4;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$700(Lcom/sec/android/app/fm/NotificationReceiver;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 406
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$4;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/fm/NotificationReceiver;->access$702(Lcom/sec/android/app/fm/NotificationReceiver;Z)Z

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$4;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$800(Lcom/sec/android/app/fm/NotificationReceiver;)Lcom/samsung/media/fmradio/FMPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->seekDown()J

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$4;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/fm/NotificationReceiver;->access$702(Lcom/sec/android/app/fm/NotificationReceiver;Z)Z

    .line 418
    :goto_1d
    return-void

    .line 413
    :cond_1e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "busy.."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_1d

    .line 414
    :catch_26
    move-exception v1

    move-object v0, v1

    .line 415
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method
