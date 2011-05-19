.class Lcom/sec/android/app/fm/RenameActionActivity$1;
.super Ljava/lang/Object;
.source "RenameActionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RenameActionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RenameActionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RenameActionActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameActionActivity$1;->this$0:Lcom/sec/android/app/fm/RenameActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameActionActivity$1;->this$0:Lcom/sec/android/app/fm/RenameActionActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RenameActionActivity;->access$100(Lcom/sec/android/app/fm/RenameActionActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/RenameActionActivity$1;->this$0:Lcom/sec/android/app/fm/RenameActionActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/RenameActionActivity;->access$000(Lcom/sec/android/app/fm/RenameActionActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 59
    return-void
.end method
