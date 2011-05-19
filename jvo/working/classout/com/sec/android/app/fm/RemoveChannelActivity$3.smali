.class Lcom/sec/android/app/fm/RemoveChannelActivity$3;
.super Ljava/lang/Object;
.source "RemoveChannelActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 137
    iput-object p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 142
    const v1, 0x7f090006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 144
    .local v0, chBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 145
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$600(Lcom/sec/android/app/fm/RemoveChannelActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    .line 154
    :goto_22
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$700(Lcom/sec/android/app/fm/RemoveChannelActivity;)V

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 156
    return-void

    .line 148
    :cond_31
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$600(Lcom/sec/android/app/fm/RemoveChannelActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    iput-boolean v2, v1, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v1, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$102(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)Z

    goto :goto_22
.end method
