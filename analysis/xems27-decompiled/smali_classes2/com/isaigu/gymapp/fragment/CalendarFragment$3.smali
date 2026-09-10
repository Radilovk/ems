.class Lcom/isaigu/gymapp/fragment/CalendarFragment$3;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/CalendarFragment;->onActivityResult(IILandroid/content/Intent;)V
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

    .line 293
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermission(Z)V
    .locals 3
    .param p1, "success"    # Z

    .line 295
    if-nez p1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/CalendarFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/CalendarFragment;

    const v2, 0x7f0d0034

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/fragment/CalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method
