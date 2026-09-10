.class Lme/jessyan/autosize/AutoSizeConfig$2;
.super Ljava/lang/Object;
.source "AutoSizeConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jessyan/autosize/AutoSizeConfig;->getMetaData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jessyan/autosize/AutoSizeConfig;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lme/jessyan/autosize/AutoSizeConfig;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lme/jessyan/autosize/AutoSizeConfig;

    .line 609
    iput-object p1, p0, Lme/jessyan/autosize/AutoSizeConfig$2;->this$0:Lme/jessyan/autosize/AutoSizeConfig;

    iput-object p2, p0, Lme/jessyan/autosize/AutoSizeConfig$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 612
    const-string v0, "design_height_in_dp"

    const-string v1, "design_width_in_dp"

    iget-object v2, p0, Lme/jessyan/autosize/AutoSizeConfig$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 615
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lme/jessyan/autosize/AutoSizeConfig$2;->val$context:Landroid/content/Context;

    .line 616
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 615
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 617
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 618
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 619
    iget-object v4, p0, Lme/jessyan/autosize/AutoSizeConfig$2;->this$0:Lme/jessyan/autosize/AutoSizeConfig;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lme/jessyan/autosize/AutoSizeConfig;->access$402(Lme/jessyan/autosize/AutoSizeConfig;I)I

    .line 621
    :cond_0
    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    iget-object v1, p0, Lme/jessyan/autosize/AutoSizeConfig$2;->this$0:Lme/jessyan/autosize/AutoSizeConfig;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lme/jessyan/autosize/AutoSizeConfig;->access$502(Lme/jessyan/autosize/AutoSizeConfig;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :cond_1
    goto :goto_0

    .line 625
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 628
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method
