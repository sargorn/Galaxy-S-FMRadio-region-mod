.class Lcom/sec/android/app/fm/RemoveChannelActivity$MyHandler;
.super Landroid/os/Handler;
.source "RemoveChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RemoveChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 529
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 530
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    .line 531
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 532
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 535
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_14
    return-void
.end method
