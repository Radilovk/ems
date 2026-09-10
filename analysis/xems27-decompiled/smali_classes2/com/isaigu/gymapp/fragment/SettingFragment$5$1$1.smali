.class Lcom/isaigu/gymapp/fragment/SettingFragment$5$1$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;

    .line 290
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SettingFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$200(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/mgr/CommonUtils;->formatTime2(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/SettingFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const v4, 0x7f0d0041

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/SettingFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const v4, 0x7f0d005c

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/SettingFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const v4, 0x7f0d0075

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method
