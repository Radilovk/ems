.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepCarrier;
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
    name = "StepCarrier"
.end annotation


# instance fields
.field final id:I

.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V
    .registers 3

    .prologue
    .line 1918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1919
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepCarrier;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 1920
    iput p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepCarrier;->id:I

    .line 1921
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepCarrier;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepCarrier;->id:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepCarrier(I)V

    .line 1926
    return-void
.end method
