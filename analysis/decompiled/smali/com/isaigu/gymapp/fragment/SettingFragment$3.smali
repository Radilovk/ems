.class Lcom/isaigu/gymapp/fragment/SettingFragment$3;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/OnRangeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment;->initSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChanged(Lcom/isaigu/gymapp/widget/RangeSeekBar;FFZ)V
    .locals 9
    .param p1, "view"    # Lcom/isaigu/gymapp/widget/RangeSeekBar;
    .param p2, "leftValue"    # F
    .param p3, "rightValue"    # F
    .param p4, "isFromUser"    # Z

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    float-to-int v1, v3

    .line 217
    .local v1, "seekValue":I
    const/high16 v3, 0x42200000    # 40.0f

    int-to-float v4, v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x43570000    # 215.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 218
    .local v2, "value":I
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iput v1, v3, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 222
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iget v3, v3, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-gez v3, :cond_0

    .line 223
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 225
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$000(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const v6, 0x7f080057

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v8

    iget v8, v8, Lcom/isaigu/gymapp/bean/UserData;->light:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v1    # "seekValue":I
    .end local v2    # "value":I
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V
    .locals 0
    .param p1, "view"    # Lcom/isaigu/gymapp/widget/RangeSeekBar;
    .param p2, "isLeft"    # Z

    .prologue
    .line 230
    return-void
.end method

.method public onStopTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V
    .locals 10
    .param p1, "view"    # Lcom/isaigu/gymapp/widget/RangeSeekBar;
    .param p2, "isLeft"    # Z

    .prologue
    .line 234
    :try_start_0
    invoke-virtual {p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    float-to-int v1, v4

    .line 235
    .local v1, "seekValue":I
    const/high16 v4, 0x42200000    # 40.0f

    int-to-float v5, v1

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x43570000    # 215.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 236
    .local v3, "value":I
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    const-string v4, "screen_brightness"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 241
    .local v2, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 243
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    int-to-float v4, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->setActivityBrightness(FLandroid/app/Activity;)V

    .line 244
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v4

    iput v1, v4, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 245
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v4

    iget v4, v4, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-gez v4, :cond_0

    .line 246
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 248
    :cond_0
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-static {v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$000(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const v7, 0x7f080057

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v9

    iget v9, v9, Lcom/isaigu/gymapp/bean/UserData;->light:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v1    # "seekValue":I
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "value":I
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
