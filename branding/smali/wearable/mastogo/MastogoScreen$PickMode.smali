.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMode;
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
    name = "PickMode"
.end annotation


# instance fields
.field final id:I

.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V
    .registers 3

    .prologue
    .line 1951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1952
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMode;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 1953
    iput p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMode;->id:I

    .line 1954
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMode;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMode;->id:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->pickMode(I)V

    .line 1959
    return-void
.end method
