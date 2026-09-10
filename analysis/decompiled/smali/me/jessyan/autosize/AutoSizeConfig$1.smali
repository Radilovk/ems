.class Lme/jessyan/autosize/AutoSizeConfig$1;
.super Ljava/lang/Object;
.source "AutoSizeConfig.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jessyan/autosize/AutoSizeConfig;->init(Landroid/app/Application;ZLme/jessyan/autosize/AutoAdaptStrategy;)Lme/jessyan/autosize/AutoSizeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jessyan/autosize/AutoSizeConfig;

.field final synthetic val$application:Landroid/app/Application;


# direct methods
.method constructor <init>(Lme/jessyan/autosize/AutoSizeConfig;Landroid/app/Application;)V
    .locals 0
    .param p1, "this$0"    # Lme/jessyan/autosize/AutoSizeConfig;

    .prologue
    .line 215
    iput-object p1, p0, Lme/jessyan/autosize/AutoSizeConfig$1;->this$0:Lme/jessyan/autosize/AutoSizeConfig;

    iput-object p2, p0, Lme/jessyan/autosize/AutoSizeConfig$1;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 218
    if-eqz p1, :cond_1

    .line 219
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    .line 220
    iget-object v1, p0, Lme/jessyan/autosize/AutoSizeConfig$1;->this$0:Lme/jessyan/autosize/AutoSizeConfig;

    .line 221
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 220
    invoke-static {v1, v4}, Lme/jessyan/autosize/AutoSizeConfig;->access$002(Lme/jessyan/autosize/AutoSizeConfig;F)F

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initScaledDensity = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lme/jessyan/autosize/AutoSizeConfig$1;->this$0:Lme/jessyan/autosize/AutoSizeConfig;

    invoke-static {v4}, Lme/jessyan/autosize/AutoSizeConfig;->access$000(Lme/jessyan/autosize/AutoSizeConfig;)F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " on ConfigurationChanged"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 224
    :cond_0
    iget-object v4, p0, Lme/jessyan/autosize/AutoSizeConfig$1;->this$0:Lme/jessyan/autosize/AutoSizeConfig;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lme/jessyan/autosize/AutoSizeConfig;->access$102(Lme/jessyan/autosize/AutoSizeConfig;Z)Z

    .line 225
    iget-object v1, p0, Lme/jessyan/autosize/AutoSizeConfig$1;->val$application:Landroid/app/Application;

    invoke-static {v1}, Lme/jessyan/autosize/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 226
    .local v0, "screenSize":[I
    iget-object v1, p0, Lme/jessyan/autosize/AutoSizeConfig$1;->this$0:Lme/jessyan/autosize/AutoSizeConfig;

    aget v3, v0, v3

    invoke-static {v1, v3}, Lme/jessyan/autosize/AutoSizeConfig;->access$202(Lme/jessyan/autosize/AutoSizeConfig;I)I

    .line 227
    iget-object v1, p0, Lme/jessyan/autosize/AutoSizeConfig$1;->this$0:Lme/jessyan/autosize/AutoSizeConfig;

    aget v2, v0, v2

    invoke-static {v1, v2}, Lme/jessyan/autosize/AutoSizeConfig;->access$302(Lme/jessyan/autosize/AutoSizeConfig;I)I

    .line 229
    .end local v0    # "screenSize":[I
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 224
    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method
