.class Lcom/sec/android/app/fm/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2975
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$11;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/high16 v1, -0x4080

    .line 2978
    if-nez p2, :cond_28

    .line 2982
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$11;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/MainActivity;->startScan(Z)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2983
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$11;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    .line 2984
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$11;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->removeAllChannel()V

    .line 2985
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$11;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2300(Lcom/sec/android/app/fm/MainActivity;)V

    .line 2986
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$11;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 2987
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$11;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$1200(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 2995
    :cond_27
    :goto_27
    return-void

    .line 2990
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$11;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/MainActivity;->startScan(Z)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2991
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$11;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    .line 2992
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$11;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->clearNonFavChannel()V

    goto :goto_27
.end method
