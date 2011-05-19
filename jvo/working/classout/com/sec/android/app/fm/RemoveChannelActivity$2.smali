.class Lcom/sec/android/app/fm/RemoveChannelActivity$2;
.super Ljava/lang/Object;
.source "RemoveChannelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RemoveChannelActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 109
    iput-object p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$100(Lcom/sec/android/app/fm/RemoveChannelActivity;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$102(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)Z

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$200(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$300(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    :goto_1d
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$400(Lcom/sec/android/app/fm/RemoveChannelActivity;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$500(Lcom/sec/android/app/fm/RemoveChannelActivity;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 125
    :goto_2e
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 126
    return-void

    .line 117
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$102(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)Z

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$200(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$300(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1d

    .line 124
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$500(Lcom/sec/android/app/fm/RemoveChannelActivity;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_2e
.end method
