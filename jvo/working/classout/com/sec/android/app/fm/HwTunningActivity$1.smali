.class Lcom/sec/android/app/fm/HwTunningActivity$1;
.super Ljava/lang/Object;
.source "HwTunningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/HwTunningActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/HwTunningActivity;

.field final synthetic val$player:Lcom/samsung/media/fmradio/FMPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/HwTunningActivity;Lcom/samsung/media/fmradio/FMPlayer;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/fm/HwTunningActivity$1;->this$0:Lcom/sec/android/app/fm/HwTunningActivity;

    iput-object p2, p0, Lcom/sec/android/app/fm/HwTunningActivity$1;->val$player:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 39
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSSI set:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity$1;->this$0:Lcom/sec/android/app/fm/HwTunningActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/HwTunningActivity;->access$000(Lcom/sec/android/app/fm/HwTunningActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/sec/android/app/fm/HwTunningActivity$1;->val$player:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/HwTunningActivity$1;->this$0:Lcom/sec/android/app/fm/HwTunningActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/HwTunningActivity;->access$000(Lcom/sec/android/app/fm/HwTunningActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/media/fmradio/FMPlayer;->setSeekRSSI(J)V

    .line 41
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SNR set:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/HwTunningActivity$1;->this$0:Lcom/sec/android/app/fm/HwTunningActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/HwTunningActivity;->access$100(Lcom/sec/android/app/fm/HwTunningActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/sec/android/app/fm/HwTunningActivity$1;->val$player:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/HwTunningActivity$1;->this$0:Lcom/sec/android/app/fm/HwTunningActivity;

    invoke-static {v2}, Lcom/sec/android/app/fm/HwTunningActivity;->access$100(Lcom/sec/android/app/fm/HwTunningActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/media/fmradio/FMPlayer;->setSeekSNR(J)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73

    .line 47
    :goto_72
    return-void

    .line 43
    :catch_73
    move-exception v1

    move-object v0, v1

    .line 44
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    iget-object v1, p0, Lcom/sec/android/app/fm/HwTunningActivity$1;->this$0:Lcom/sec/android/app/fm/HwTunningActivity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_72
.end method
