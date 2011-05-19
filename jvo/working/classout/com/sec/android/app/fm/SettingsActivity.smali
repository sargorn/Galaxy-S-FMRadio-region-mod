.class public Lcom/sec/android/app/fm/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAf:Landroid/preference/CheckBoxPreference;

.field private mAutoOnOff:Landroid/preference/ListPreference;

.field private mBackKey:Z

.field private mBgPlaying:Landroid/preference/CheckBoxPreference;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRegPref:Landroid/preference/Preference;

.field private mStationId:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setAutoOnOffSummary(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method private setInitialValues()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 73
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "region"

    const-string v4, "Europe"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->setRegionSummary(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBgPlaying:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "backgroudplaying"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStationId:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "stationid"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAf:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "af"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "autoonoff"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, ivalue:I
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/SettingsActivity;->setAutoOnOffSummary(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private setRegionSummary(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 94
    const-string v0, "Europe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRegPref:Landroid/preference/Preference;

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 101
    :cond_10
    :goto_10
    return-void

    .line 96
    :cond_11
    const-string v0, "USA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRegPref:Landroid/preference/Preference;

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_10

    .line 98
    :cond_22
    const-string v0, "Japan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRegPref:Landroid/preference/Preference;

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_10
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v10, "region"

    .line 108
    const/4 v8, -0x1

    if-ne p2, v8, :cond_88

    .line 110
    const/4 v8, 0x1

    if-ne p1, v8, :cond_88

    .line 111
    const-string v8, "com.samsung.android.app.radio.region"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, retValue:Ljava/lang/String;
    if-nez v7, :cond_11

    .line 165
    .end local v7           #retValue:Ljava/lang/String;
    :cond_10
    :goto_10
    return-void

    .line 115
    .restart local v7       #retValue:Ljava/lang/String;
    :cond_11
    iget-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "region"

    const/4 v9, 0x0

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, oldVal:Ljava/lang/String;
    if-eqz v6, :cond_22

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 118
    :cond_22
    iget-object v8, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 119
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "region"

    invoke-interface {v4, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    invoke-direct {p0, v7}, Lcom/sec/android/app/fm/SettingsActivity;->setRegionSummary(Ljava/lang/String;)V

    .line 122
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v9, "setting region setting"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 123
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/fm/MainActivity;->getRegion()V

    .line 125
    const-wide/16 v1, -0x1

    .line 127
    .local v1, channel:J
    :try_start_41
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J
    :try_end_48
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_41 .. :try_end_48} :catch_b3

    move-result-wide v1

    .line 132
    :goto_49
    :try_start_49
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v8, v9}, Lcom/sec/android/app/fm/MainActivity;->setRegion(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 134
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 136
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v8, v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z

    .line 137
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_88

    .line 138
    long-to-float v8, v1

    const/high16 v9, 0x447a

    div-float v0, v8, v9

    .line 139
    .local v0, ch:F
    sget v8, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_76

    .line 140
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 141
    :cond_76
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    invoke-virtual {v8, v0}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->setInitialFreq1(F)V

    .line 143
    sget v8, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpl-float v8, v0, v8

    if-nez v8, :cond_88

    .line 144
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8, v0}, Lcom/sec/android/app/fm/MainActivity;->setFreqOnImage(F)V
    :try_end_88
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_49 .. :try_end_88} :catch_ad

    .line 164
    .end local v0           #ch:F
    .end local v1           #channel:J
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #oldVal:Ljava/lang/String;
    .end local v7           #retValue:Ljava/lang/String;
    :cond_88
    :goto_88
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_10

    .line 150
    .restart local v1       #channel:J
    .restart local v4       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #oldVal:Ljava/lang/String;
    .restart local v7       #retValue:Ljava/lang/String;
    :cond_8c
    :try_start_8c
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    iget v5, v8, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->mCurrentFreq:F

    .line 151
    .local v5, freq:F
    sget v8, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpg-float v8, v5, v8

    if-gez v8, :cond_9a

    .line 152
    sget v5, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 153
    :cond_9a
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v8, v8, Lcom/sec/android/app/fm/MainActivity;->mHScroll:Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;

    invoke-virtual {v8, v5}, Lcom/sec/android/app/fm/ui/MyHorizontalScrollView;->setInitialFreq1(F)V

    .line 154
    sget v8, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpl-float v8, v5, v8

    if-nez v8, :cond_88

    .line 155
    sget-object v8, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v8, v5}, Lcom/sec/android/app/fm/MainActivity;->setFreqOnImage(F)V
    :try_end_ac
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_8c .. :try_end_ac} :catch_ad

    goto :goto_88

    .line 159
    .end local v5           #freq:F
    :catch_ad
    move-exception v8

    move-object v3, v8

    .line 160
    .local v3, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_88

    .line 128
    .end local v3           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :catch_b3
    move-exception v8

    goto :goto_49
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->addPreferencesFromResource(I)V

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, mode:I
    const-string v1, "SettingsPreference"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 58
    const-string v1, "region"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mRegPref:Landroid/preference/Preference;

    .line 59
    const-string v1, "backgroudplaying"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBgPlaying:Landroid/preference/CheckBoxPreference;

    .line 60
    const-string v1, "stationid"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mStationId:Landroid/preference/CheckBoxPreference;

    .line 61
    const-string v1, "af"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAf:Landroid/preference/CheckBoxPreference;

    .line 62
    const-string v1, "autoonoff"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    .line 64
    invoke-direct {p0}, Lcom/sec/android/app/fm/SettingsActivity;->setInitialValues()V

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 67
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 254
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 255
    invoke-virtual {p0}, Lcom/sec/android/app/fm/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 257
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 244
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBackKey:Z

    .line 247
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const-string v7, "stationid"

    const-string v6, "backgroudplaying"

    const-string v3, "af"

    const-string v4, "region"

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 189
    const-string v2, "region"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "region"

    const-string v2, "Europe"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/fm/SettingRegionActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    const-string v3, "region"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iput-boolean v5, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBackKey:Z

    .line 195
    invoke-virtual {p0, v2, v5}, Lcom/sec/android/app/fm/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 211
    :cond_36
    :goto_36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_3b
    const-string v2, "backgroudplaying"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 197
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 198
    const-string v2, "backgroudplaying"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_36

    .line 199
    :cond_4f
    const-string v2, "stationid"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 200
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 201
    const-string v2, "stationid"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-static {v1, p0}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    goto :goto_36

    .line 204
    :cond_6d
    const-string v2, "af"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 205
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 206
    const-string v2, "af"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    goto :goto_36
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 220
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "my resume setting-------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 222
    iput-boolean v3, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBackKey:Z

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "autoonoff"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 224
    .local v0, ivalue:I
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/SettingsActivity;->setAutoOnOffSummary(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 12
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const-string v7, "autoonoff"

    .line 264
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 265
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "autoonoff"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 266
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/fm/SettingsActivity;->mAutoOnOff:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 268
    .local v2, index:I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this is the index its coming .."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    const-string v4, "autoonoff"

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/SettingsActivity;->setAutoOnOffSummary(Ljava/lang/String;)V

    .line 271
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    if-nez v2, :cond_75

    :try_start_41
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 274
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v4, :cond_57

    .line 275
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 277
    :cond_57
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    const v5, 0x7f070055

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const v8, 0x7f070029

    invoke-virtual {p0, v8}, Lcom/sec/android/app/fm/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/fm/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 278
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_75
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_41 .. :try_end_75} :catch_7d

    .line 285
    :cond_75
    :goto_75
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, v4, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-static {v4, p0}, Lcom/sec/android/app/fm/MainActivity;->checkSettingAlarm(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 289
    .end local v2           #index:I
    .end local v3           #value:Ljava/lang/String;
    :cond_7c
    return-void

    .line 281
    .restart local v2       #index:I
    .restart local v3       #value:Ljava/lang/String;
    :catch_7d
    move-exception v4

    move-object v0, v4

    .line 282
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_75
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBackKey:Z

    if-nez v0, :cond_c

    .line 233
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/SettingsActivity;->mBackKey:Z

    .line 236
    :cond_c
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 237
    return-void
.end method
