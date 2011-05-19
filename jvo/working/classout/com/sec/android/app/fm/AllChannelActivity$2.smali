.class Lcom/sec/android/app/fm/AllChannelActivity$2;
.super Ljava/lang/Object;
.source "AllChannelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/AllChannelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/AllChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/AllChannelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity$2;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    .line 191
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v1, :cond_43

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$2;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/fm/AllChannelActivity$2;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v4, 0x7f070006

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v3

    iget-wide v3, v3, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    long-to-float v3, v3

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MHz."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 214
    :goto_42
    return-void

    .line 202
    :cond_43
    :try_start_43
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$2;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v2, 0x7f070008

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_5a
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_43 .. :try_end_5a} :catch_5b

    goto :goto_42

    .line 209
    :catch_5b
    move-exception v1

    move-object v0, v1

    .line 210
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    .line 213
    .end local v0           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_62
    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$2;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/AllChannelActivity;->showDialog(I)V

    goto :goto_42
.end method
