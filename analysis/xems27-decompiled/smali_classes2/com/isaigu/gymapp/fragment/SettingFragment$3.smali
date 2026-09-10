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

    .line 219
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChanged(Lcom/isaigu/gymapp/widget/RangeSeekBar;FFZ)V
    .locals 8
    .param p1, "view"    # Lcom/isaigu/gymapp/widget/RangeSeekBar;
    .param p2, "leftValue"    # F
    .param p3, "rightValue"    # F
    .param p4, "isFromUser"    # Z

    .line 222
    :try_start_0
    invoke-virtual {p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    float-to-int v0, v0

    .line 223
    .local v0, "seekValue":I
    const/high16 v2, 0x42200000    # 40.0f

    int-to-float v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x43570000    # 215.0f

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 224
    .local v2, "value":I
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 225
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iput v0, v3, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 228
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iget v3, v3, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-gez v3, :cond_0

    .line 229
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iput v1, v3, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 231
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$000(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const v6, 0x7f0d0064

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v7

    iget v7, v7, Lcom/isaigu/gymapp/bean/UserData;->light:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "seekValue":I
    .end local v2    # "value":I
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V
    .locals 0
    .param p1, "view"    # Lcom/isaigu/gymapp/widget/RangeSeekBar;
    .param p2, "isLeft"    # Z

    .line 236
    return-void
.end method

.method public onStopTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V
    .locals 9
    .param p1, "view"    # Lcom/isaigu/gymapp/widget/RangeSeekBar;
    .param p2, "isLeft"    # Z

    .line 240
    const-string v0, "screen_brightness"

    :try_start_0
    invoke-virtual {p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    float-to-int v1, v1

    .line 241
    .local v1, "seekValue":I
    const/high16 v3, 0x42200000    # 40.0f

    int-to-float v4, v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x43570000    # 215.0f

    mul-float v4, v4, v5

    add-float/2addr v4, v3

    float-to-int v3, v4

    .line 242
    .local v3, "value":I
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 247
    .local v0, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 249
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    int-to-float v4, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->setActivityBrightness(FLandroid/app/Activity;)V

    .line 250
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v4

    iput v1, v4, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 251
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v4

    iget v4, v4, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-gez v4, :cond_0

    .line 252
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v4

    iput v2, v4, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 254
    :cond_0
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-static {v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$000(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const v7, 0x7f0d0064

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v8

    iget v8, v8, Lcom/isaigu/gymapp/bean/UserData;->light:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "seekValue":I
    .end local v3    # "value":I
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
