.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;
.super Ljava/lang/Object;
.source "MastogoScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ModStep"
.end annotation


# instance fields
.field final f:I

.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V
    .registers 3

    .prologue
    .line 1843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1844
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 1845
    iput p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;->f:I

    .line 1846
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 4

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;->f:I

    invoke-virtual {v0, v1, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modStep(II)V

    .line 1851
    return-void
.end method
