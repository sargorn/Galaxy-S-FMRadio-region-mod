.class Lcom/sec/android/app/fm/RemoveChannelActivity$1;
.super Lcom/sec/android/app/fm/MainActivity$Callback;
.source "RemoveChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RemoveChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOff(I)V
    .registers 3
    .parameter "reasonCode"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 77
    :cond_11
    return-void
.end method

.method public onTune(J)V
    .registers 4
    .parameter "frequency"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$1;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 82
    :cond_11
    return-void
.end method
