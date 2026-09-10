.class Lcom/isaigu/gymapp/fragment/CalendarFragment$2;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/CalendarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/CalendarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/CalendarFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermission(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    const v3, 0x7f080028

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
