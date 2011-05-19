.class Lcom/sec/android/app/fm/RenameChannelActivity$1;
.super Lcom/sec/android/app/fm/MainActivity$Callback;
.source "RenameChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RenameChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RenameChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RenameChannelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyUI()V
    .registers 3

    .prologue
    .line 66
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "RenameChannel Activity : notify UI"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 69
    :cond_18
    return-void
.end method

.method public onOff(I)V
    .registers 3
    .parameter "reasonCode"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 53
    :cond_11
    return-void
.end method

.method public onOn()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 58
    :cond_11
    return-void
.end method

.method public onTune(J)V
    .registers 4
    .parameter "frequency"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 63
    :cond_11
    return-void
.end method
