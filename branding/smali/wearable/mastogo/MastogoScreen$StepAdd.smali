.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepAdd;
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
    name = "StepAdd"
.end annotation


# instance fields
.field final add:Z

.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;Z)V
    .registers 3

    .prologue
    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2021
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepAdd;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 2022
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepAdd;->add:Z

    .line 2023
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepAdd;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepAdd;->add:Z

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepAdd(Z)V

    .line 2028
    return-void
.end method
