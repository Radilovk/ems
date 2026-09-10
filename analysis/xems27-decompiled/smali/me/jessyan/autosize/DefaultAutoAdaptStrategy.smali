.class public Lme/jessyan/autosize/DefaultAutoAdaptStrategy;
.super Ljava/lang/Object;
.source "DefaultAutoAdaptStrategy.java"

# interfaces
.implements Lme/jessyan/autosize/AutoAdaptStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAdapt(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 44
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getExternalAdaptManager()Lme/jessyan/autosize/external/ExternalAdaptManager;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/external/ExternalAdaptManager;->isRun()Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "%s canceled the adaptation!"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getExternalAdaptManager()Lme/jessyan/autosize/external/ExternalAdaptManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Lme/jessyan/autosize/external/ExternalAdaptManager;->isCancelAdapt(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/jessyan/autosize/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 47
    invoke-static {p2}, Lme/jessyan/autosize/AutoSize;->cancelAdapt(Landroid/app/Activity;)V

    .line 48
    return-void

    .line 50
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getExternalAdaptManager()Lme/jessyan/autosize/external/ExternalAdaptManager;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Lme/jessyan/autosize/external/ExternalAdaptManager;->getExternalAdaptInfoOfActivity(Ljava/lang/Class;)Lme/jessyan/autosize/external/ExternalAdaptInfo;

    move-result-object v0

    .line 52
    .local v0, "info":Lme/jessyan/autosize/external/ExternalAdaptInfo;
    if-eqz v0, :cond_1

    .line 53
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const-class v3, Lme/jessyan/autosize/external/ExternalAdaptInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s used %s for adaptation!"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 54
    invoke-static {p2, v0}, Lme/jessyan/autosize/AutoSize;->autoConvertDensityOfExternalAdaptInfo(Landroid/app/Activity;Lme/jessyan/autosize/external/ExternalAdaptInfo;)V

    .line 55
    return-void

    .line 61
    .end local v0    # "info":Lme/jessyan/autosize/external/ExternalAdaptInfo;
    :cond_1
    instance-of v0, p1, Lme/jessyan/autosize/internal/CancelAdapt;

    if-eqz v0, :cond_2

    .line 62
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/jessyan/autosize/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 63
    invoke-static {p2}, Lme/jessyan/autosize/AutoSize;->cancelAdapt(Landroid/app/Activity;)V

    .line 64
    return-void

    .line 68
    :cond_2
    instance-of v0, p1, Lme/jessyan/autosize/internal/CustomAdapt;

    if-eqz v0, :cond_3

    .line 69
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-class v2, Lme/jessyan/autosize/internal/CustomAdapt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "%s implemented by %s!"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 70
    move-object v0, p1

    check-cast v0, Lme/jessyan/autosize/internal/CustomAdapt;

    invoke-static {p2, v0}, Lme/jessyan/autosize/AutoSize;->autoConvertDensityOfCustomAdapt(Landroid/app/Activity;Lme/jessyan/autosize/internal/CustomAdapt;)V

    goto :goto_0

    .line 72
    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "%s used the global configuration."

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 73
    invoke-static {p2}, Lme/jessyan/autosize/AutoSize;->autoConvertDensityOfGlobal(Landroid/app/Activity;)V

    .line 75
    :goto_0
    return-void
.end method
