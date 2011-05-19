.class Lcom/sec/android/app/fm/ui/ActivityDialog$1;
.super Ljava/lang/Object;
.source "ActivityDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/ui/ActivityDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/ActivityDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/ActivityDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/ActivityDialog$1;->this$0:Lcom/sec/android/app/fm/ui/ActivityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/ActivityDialog$1;->this$0:Lcom/sec/android/app/fm/ui/ActivityDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/ActivityDialog;->finish()V

    .line 59
    return-void
.end method
