.class public Lme/jessyan/autosize/DefaultAutoAdaptStrategy;
.super Ljava/lang/Object;
.source "DefaultAutoAdaptStrategy.java"

# interfaces
.implements Lme/jessyan/autosize/AutoAdaptStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAdapt(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 7
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getExternalAdaptManager()Lme/jessyan/autosize/external/ExternalAdaptManager;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/external/ExternalAdaptManager;->isRun()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getExternalAdaptManager()Lme/jessyan/autosize/external/ExternalAdaptManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/jessyan/autosize/external/ExternalAdaptManager;->isCancelAdapt(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s canceled the adaptation!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/jessyan/autosize/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 47
    invoke-static {p2}, Lme/jessyan/autosize/AutoSize;->cancelAdapt(Landroid/app/Activity;)V

    .line 75
    .end local p1    # "target":Ljava/lang/Object;
    :goto_0
    return-void

    .line 50
    .restart local p1    # "target":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getExternalAdaptManager()Lme/jessyan/autosize/external/ExternalAdaptManager;

    move-result-object v1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/jessyan/autosize/external/ExternalAdaptManager;->getExternalAdaptInfoOfActivity(Ljava/lang/Class;)Lme/jessyan/autosize/external/ExternalAdaptInfo;

    move-result-object v0

    .line 52
    .local v0, "info":Lme/jessyan/autosize/external/ExternalAdaptInfo;
    if-eqz v0, :cond_1

    .line 53
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s used %s for adaptation!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-class v4, Lme/jessyan/autosize/external/ExternalAdaptInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 54
    invoke-static {p2, v0}, Lme/jessyan/autosize/AutoSize;->autoConvertDensityOfExternalAdaptInfo(Landroid/app/Activity;Lme/jessyan/autosize/external/ExternalAdaptInfo;)V

    goto :goto_0

    .line 61
    .end local v0    # "info":Lme/jessyan/autosize/external/ExternalAdaptInfo;
    :cond_1
    instance-of v1, p1, Lme/jessyan/autosize/internal/CancelAdapt;

    if-eqz v1, :cond_2

    .line 62
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s canceled the adaptation!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/jessyan/autosize/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 63
    invoke-static {p2}, Lme/jessyan/autosize/AutoSize;->cancelAdapt(Landroid/app/Activity;)V

    goto :goto_0

    .line 68
    :cond_2
    instance-of v1, p1, Lme/jessyan/autosize/internal/CustomAdapt;

    if-eqz v1, :cond_3

    .line 69
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s implemented by %s!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-class v4, Lme/jessyan/autosize/internal/CustomAdapt;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 70
    check-cast p1, Lme/jessyan/autosize/internal/CustomAdapt;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-static {p2, p1}, Lme/jessyan/autosize/AutoSize;->autoConvertDensityOfCustomAdapt(Landroid/app/Activity;Lme/jessyan/autosize/internal/CustomAdapt;)V

    goto :goto_0

    .line 72
    .restart local p1    # "target":Ljava/lang/Object;
    :cond_3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s used the global configuration."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 73
    invoke-static {p2}, Lme/jessyan/autosize/AutoSize;->autoConvertDensityOfGlobal(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
