.class final Lcom/isaigu/gymapp/wearable/PlanScreen$ToggleOn;
.super Ljava/lang/Object;
.source "PlanScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PlanScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToggleOn"
.end annotation


# instance fields
.field final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$ToggleOn;->c:Landroid/content/Context;

    .line 566
    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$ToggleOn;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/NextClient;->setEnabled(Landroid/content/Context;Z)V

    .line 571
    return-void
.end method
