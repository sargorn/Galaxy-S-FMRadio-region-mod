.class Lcom/sec/android/app/fm/ui/ActivityDialog$3;
.super Ljava/lang/Object;
.source "ActivityDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/ActivityDialog$3;->this$0:Lcom/sec/android/app/fm/ui/ActivityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/ActivityDialog$3;->this$0:Lcom/sec/android/app/fm/ui/ActivityDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/ActivityDialog;->finish()V

    .line 65
    return-void
.end method
