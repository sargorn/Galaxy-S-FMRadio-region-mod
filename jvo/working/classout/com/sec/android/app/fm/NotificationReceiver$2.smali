.class Lcom/sec/android/app/fm/NotificationReceiver$2;
.super Lcom/samsung/media/fmradio/FMEventListener;
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
.field private offCode:I

.field final synthetic this$0:Lcom/sec/android/app/fm/NotificationReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/NotificationReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public earPhoneDisconnected()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->offCode:I

    .line 205
    return-void
.end method

.method public onAFReceived(J)V
    .registers 3
    .parameter "freq"

    .prologue
    .line 125
    return-void
.end method

.method public onAFStarted()V
    .registers 1

    .prologue
    .line 120
    return-void
.end method

.method public onOff(I)V
    .registers 8
    .parameter "reasonCode"

    .prologue
    const/4 v5, 0x0

    .line 148
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NotificationReceiver] onOff :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    const-string v1, " NotificationReceiver "

    const-string v2, " onOff start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 151
    const/16 v1, 0xb

    if-ne p1, v1, :cond_5c

    .line 153
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[NotificationReceiver] paused"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)V

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    if-eqz v1, :cond_58

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification()V

    .line 157
    :cond_58
    invoke-static {}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->cancel()V

    .line 198
    :goto_5b
    return-void

    .line 161
    :cond_5c
    iget v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->offCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_ac

    .line 162
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 163
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    if-nez v1, :cond_7a

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    .line 165
    :cond_7a
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 166
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 168
    :cond_87
    iput v5, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->offCode:I

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_9e

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/fm/NotificationReceiver;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    :cond_9e
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->removeNotification()V

    goto :goto_5b

    .line 176
    :cond_ac
    const/4 v1, 0x4

    if-ne p1, v1, :cond_d2

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_c4

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/fm/NotificationReceiver;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    :cond_c4
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->removeNotification()V

    goto :goto_5b

    .line 182
    :cond_d2
    const/16 v1, 0xa

    if-ne p1, v1, :cond_11c

    .line 183
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    if-nez v1, :cond_117

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070057

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    .line 185
    :cond_117
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 187
    :cond_11c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 188
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Lcom/sec/android/app/fm/NotificationReceiver;->access$100()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    if-eqz v1, :cond_141

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification()V

    .line 191
    :cond_141
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)V

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_15a

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 196
    :cond_15a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Notification Receiver on Off"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->cancel()V

    goto/16 :goto_5b
.end method

.method public onOn()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 131
    iput v5, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->offCode:I

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/fm/NotificationReceiver;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    :cond_18
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$300(Lcom/sec/android/app/fm/NotificationReceiver;)V

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$400(Lcom/sec/android/app/fm/NotificationReceiver;)F

    move-result v0

    .line 136
    .local v0, mFreq:F
    const-string v1, " NotificationReceiver "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onOn mFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 138
    const/high16 v1, -0x4080

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_86

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    .line 141
    :cond_86
    return-void
.end method

.method public onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "freq"
    .parameter "channelName"
    .parameter "radioText"

    .prologue
    .line 232
    if-eqz p3, :cond_55

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$400(Lcom/sec/android/app/fm/NotificationReceiver;)F

    move-result v0

    .line 234
    .local v0, mFreq:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_55

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MHz : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    .line 238
    .end local v0           #mFreq:F
    :cond_55
    return-void
.end method

.method public onTune(J)V
    .registers 8
    .parameter "frequency"

    .prologue
    .line 211
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$400(Lcom/sec/android/app/fm/NotificationReceiver;)F

    move-result v0

    .line 221
    .local v0, mFreq:F
    const/high16 v1, -0x4080

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4d

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    const/high16 v2, 0x447a

    mul-float/2addr v2, v0

    float-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$602(Lcom/sec/android/app/fm/NotificationReceiver;J)J

    .line 226
    :cond_4d
    return-void
.end method
