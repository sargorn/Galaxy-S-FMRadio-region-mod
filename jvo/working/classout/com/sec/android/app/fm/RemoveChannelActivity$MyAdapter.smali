.class Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoveChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RemoveChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 441
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 442
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$600(Lcom/sec/android/app/fm/RemoveChannelActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 449
    if-nez p1, :cond_4

    .line 450
    const/4 v0, 0x0

    .line 451
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$600(Lcom/sec/android/app/fm/RemoveChannelActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 455
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "arg0"
    .parameter "view"
    .parameter "arg2"

    .prologue
    const/4 v10, 0x0

    .line 476
    iget-object v7, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-static {v7}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$600(Lcom/sec/android/app/fm/RemoveChannelActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;

    .line 477
    .local v0, chInfo:Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;
    iget-object v1, v0, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->channel:Lcom/sec/android/app/fm/data/Channel;

    .line 478
    .local v1, channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez p2, :cond_1b

    .line 479
    iget-object v7, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030002

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 482
    :cond_1b
    const v7, 0x7f090002

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 484
    .local v4, imgFavIcon:Landroid/widget/ImageView;
    const v7, 0x7f090006

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 485
    .local v3, imgDelIcon:Landroid/widget/CheckBox;
    const v7, 0x7f090005

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 487
    .local v6, txtChannelName:Landroid/widget/TextView;
    const v7, 0x7f090004

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 490
    .local v5, txtChannelFreq:Landroid/widget/TextView;
    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 491
    iget-boolean v7, v0, Lcom/sec/android/app/fm/RemoveChannelActivity$ChannelInfo;->willDeleted:Z

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 492
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MHz"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v7, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-boolean v7, v1, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-eqz v7, :cond_7f

    .line 495
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    :goto_6b
    :try_start_6b
    sget-object v7, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v7

    iget v8, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_84

    .line 507
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7e} :catch_8d

    .line 517
    :goto_7e
    return-object p2

    .line 497
    :cond_7f
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6b

    .line 511
    :cond_84
    :try_start_84
    iget-object v7, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$MyAdapter;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    const v8, 0x207000e

    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8c} :catch_8d

    goto :goto_7e

    .line 514
    :catch_8d
    move-exception v7

    move-object v2, v7

    .line 515
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7e
.end method
