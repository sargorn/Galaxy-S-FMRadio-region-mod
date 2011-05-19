.class Lcom/sec/android/app/fm/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private changed:Z

.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v8, "freqName"

    const-string v7, "freq"

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_4e

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 185
    :cond_19
    const-string v3, "freq"

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 186
    .local v1, txtFreq:Landroid/widget/TextView;
    const-string v3, "freqName"

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 189
    .local v2, txtFreqName:Landroid/widget/TextView;
    if-eqz v1, :cond_4d

    if-eqz v2, :cond_4d

    .line 191
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$2;->view:Landroid/view/View;

    .line 192
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v4, v4, Lcom/sec/android/app/fm/MainActivity;->mColor3:I

    if-ne v3, v4, :cond_46

    .line 193
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v3, v3, Lcom/sec/android/app/fm/MainActivity;->mColor1:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iput-boolean v5, p0, Lcom/sec/android/app/fm/MainActivity$2;->changed:Z

    .line 196
    :cond_46
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v3, v3, Lcom/sec/android/app/fm/MainActivity;->mColor1:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    .end local v1           #txtFreq:Landroid/widget/TextView;
    .end local v2           #txtFreqName:Landroid/widget/TextView;
    :cond_4d
    :goto_4d
    return v6

    .line 198
    :cond_4e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v5, :cond_60

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_4d

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 200
    :cond_60
    const-string v3, "freq"

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 201
    .restart local v1       #txtFreq:Landroid/widget/TextView;
    const-string v3, "freqName"

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 204
    .restart local v2       #txtFreqName:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$2;->view:Landroid/view/View;

    if-ne p1, v3, :cond_4d

    if-eqz v1, :cond_4d

    if-eqz v2, :cond_4d

    .line 209
    :try_start_78
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v5, v5, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v5, v5, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 210
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v3, v3, Lcom/sec/android/app/fm/MainActivity;->mColor3:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    :goto_ac
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity$2;->changed:Z

    .line 215
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v3, v3, Lcom/sec/android/app/fm/MainActivity;->mColor3:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_b6
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_78 .. :try_end_b6} :catch_b7

    goto :goto_4d

    .line 216
    :catch_b7
    move-exception v3

    move-object v0, v3

    .line 217
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_4d

    .line 212
    .end local v0           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_bd
    :try_start_bd
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$2;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget v3, v3, Lcom/sec/android/app/fm/MainActivity;->mColor1:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_c4
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_bd .. :try_end_c4} :catch_b7

    goto :goto_ac
.end method
