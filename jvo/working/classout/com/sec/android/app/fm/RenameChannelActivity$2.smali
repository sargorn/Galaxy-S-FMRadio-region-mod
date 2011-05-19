.class Lcom/sec/android/app/fm/RenameChannelActivity$2;
.super Ljava/lang/Object;
.source "RenameChannelActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RenameChannelActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 99
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 104
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    .line 105
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/fm/RenameChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    const-class v3, Lcom/sec/android/app/fm/RenameActionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const-string v2, "com.samsung.app.fm.radio.freq"

    iget v3, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 108
    const-string v2, "com.samsung.app.fm.radio.freq.name"

    iget-object v0, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-static {v0, v4}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$102(Lcom/sec/android/app/fm/RenameChannelActivity;Z)Z

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/fm/RenameChannelActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    return-void
.end method
