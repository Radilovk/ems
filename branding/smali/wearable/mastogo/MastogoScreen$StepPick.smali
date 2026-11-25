.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepPick;
.super Ljava/lang/Object;
.source "MastogoScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StepPick"
.end annotation


# instance fields
.field final i:I

.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V
    .registers 3

    .prologue
    .line 2110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2111
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepPick;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 2112
    iput p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepPick;->i:I

    .line 2113
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepPick;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepPick;->i:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepPick(I)V

    .line 2118
    return-void
.end method
