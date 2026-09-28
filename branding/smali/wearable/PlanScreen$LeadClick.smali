.class final Lcom/isaigu/gymapp/wearable/PlanScreen$LeadClick;
.super Ljava/lang/Object;
.source "PlanScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PlanScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LeadClick"
.end annotation


# instance fields
.field final m:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    iput p1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$LeadClick;->m:I

    .line 989
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 993
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$LeadClick;->m:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->setLead(Landroid/content/Context;I)V

    .line 994
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->refresh()V

    .line 995
    return-void
.end method
