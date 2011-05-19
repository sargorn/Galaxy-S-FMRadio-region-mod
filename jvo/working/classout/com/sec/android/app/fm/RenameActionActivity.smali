.class public Lcom/sec/android/app/fm/RenameActionActivity;
.super Landroid/app/Activity;
.source "RenameActionActivity.java"


# instance fields
.field private inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mBackKey:Z

.field private mEditText:Landroid/widget/EditText;

.field private mFreq:F

.field private mFreqName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/RenameActionActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/RenameActionActivity;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/high16 v3, -0x4080

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.samsung.app.fm.radio.freq"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreq:F

    .line 39
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.samsung.app.fm.radio.freq.name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    .line 42
    iget v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreq:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_31

    .line 43
    const v1, 0x7f070003

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->finish()V

    .line 47
    :cond_31
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RenameActionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 48
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RenameActionActivity;->setContentView(I)V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreq:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RenameActionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    const v1, 0x7f09005a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RenameActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mEditText:Landroid/widget/EditText;

    .line 52
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 55
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/app/fm/RenameActionActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RenameActionActivity$1;-><init>(Lcom/sec/android/app/fm/RenameActionActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 70
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mBackKey:Z

    .line 73
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mBackKey:Z

    if-nez v0, :cond_c

    .line 81
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mBackKey:Z

    .line 84
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 85
    return-void
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .registers 7
    .parameter "target"

    .prologue
    .line 92
    iget-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    const/16 v3, 0xa

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    .line 95
    const/4 v1, -0x1

    .line 96
    .local v1, spaceCount:I
    iget-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2f

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    const-string v3, "[^ ]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 100
    :cond_2f
    iget-object v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_43

    .line 101
    const v2, 0x7f070009

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 110
    :goto_42
    return-void

    .line 103
    :cond_43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.samsung.app.fm.radio.freq"

    iget v3, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreq:F

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 105
    const-string v2, "com.samsung.app.fm.radio.freq.renamed"

    iget-object v3, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mFreqName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/fm/RenameActionActivity;->setResult(ILandroid/content/Intent;)V

    .line 107
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mBackKey:Z

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->finish()V

    goto :goto_42
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RenameActionActivity;->mBackKey:Z

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameActionActivity;->finish()V

    .line 119
    return-void
.end method
