.class Lcom/sec/android/app/fm/AllChannelActivity$1$1;
.super Ljava/lang/Object;
.source "AllChannelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/AllChannelActivity$1;->scanningOver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/fm/AllChannelActivity$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/AllChannelActivity$1;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity$1$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$1;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$1;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$1$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$1;

    iget-object v0, v0, Lcom/sec/android/app/fm/AllChannelActivity$1;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$100(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 152
    :cond_23
    return-void
.end method
