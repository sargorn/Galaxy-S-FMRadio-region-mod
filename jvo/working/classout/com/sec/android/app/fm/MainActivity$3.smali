.class Lcom/sec/android/app/fm/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/sec/android/app/fm/ui/MyHorizontalScrollView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
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
    .line 228
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findNearestFavChannel(F)F
    .registers 10
    .parameter "freqMHz"

    .prologue
    const/4 v7, 0x5

    const v6, 0x3dcccccd

    const-wide/high16 v4, 0x4059

    .line 283
    move v1, p1

    .line 285
    .local v1, lFreq:F
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/fm/data/Channel;

    invoke-direct {v3, v1}, Lcom/sec/android/app/fm/data/Channel;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v1

    .line 303
    :goto_17
    return v2

    .line 288
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v7, :cond_38

    .line 289
    add-float/2addr v1, v6

    .line 290
    float-to-double v2, v1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    double-to-float v1, v2

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/fm/data/Channel;

    invoke-direct {v3, v1}, Lcom/sec/android/app/fm/data/Channel;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    move v2, v1

    .line 292
    goto :goto_17

    .line 288
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 295
    :cond_38
    move v1, p1

    .line 296
    const/4 v0, 0x0

    :goto_3a
    if-ge v0, v7, :cond_59

    .line 297
    sub-float/2addr v1, v6

    .line 298
    float-to-double v2, v1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    double-to-float v1, v2

    .line 299
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/fm/data/Channel;

    invoke-direct {v3, v1}, Lcom/sec/android/app/fm/data/Channel;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    move v2, v1

    .line 300
    goto :goto_17

    .line 296
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_59
    move v2, p1

    .line 303
    goto :goto_17
.end method


# virtual methods
.method public onScrolled(F)V
    .registers 8
    .parameter "freqMHz"

    .prologue
    .line 234
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    .line 235
    .local v0, cfreqMHz:F
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current freq :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 237
    cmpl-float v3, v0, p1

    if-eqz v3, :cond_60

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 238
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Scrolled]Tune to :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3, p1, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    .line 253
    :goto_55
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 258
    .end local v0           #cfreqMHz:F
    :goto_5f
    return-void

    .line 242
    .restart local v0       #cfreqMHz:F
    :cond_60
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$100(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_90

    .line 245
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .line 246
    .local v1, channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v1, :cond_84

    .line 247
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7b} :catch_7c

    goto :goto_55

    .line 255
    .end local v0           #cfreqMHz:F
    .end local v1           #channel:Lcom/sec/android/app/fm/data/Channel;
    :catch_7c
    move-exception v3

    move-object v2, v3

    .line 256
    .local v2, e1:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_5f

    .line 249
    .end local v2           #e1:Ljava/lang/Exception;
    .restart local v0       #cfreqMHz:F
    .restart local v1       #channel:Lcom/sec/android/app/fm/data/Channel;
    :cond_84
    :try_start_84
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55

    .line 251
    .end local v1           #channel:Lcom/sec/android/app/fm/data/Channel;
    :cond_90
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->access$100(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9f} :catch_7c

    goto :goto_55
.end method

.method public onScrolling(F)V
    .registers 5
    .parameter "freqMHz"

    .prologue
    .line 262
    sget v0, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1f

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freq is invalid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 270
    :cond_1e
    :goto_1e
    return-void

    .line 266
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/fm/MainActivity;->setFreqOnImage(F)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrolling.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method

.method public onTouched(F)V
    .registers 5
    .parameter "freqMHz"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Touched]Tune to :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$3;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity$3;->findNearestFavChannel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->setFrequency(F)V

    .line 280
    return-void
.end method
