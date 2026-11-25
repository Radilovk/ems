.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMinutes;
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
    name = "PickMinutes"
.end annotation


# instance fields
.field final m:I

.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V
    .registers 3

    .prologue
    .line 1993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1994
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMinutes;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 1995
    iput p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMinutes;->m:I

    .line 1996
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMinutes;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMinutes;->m:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->pickMinutes(I)V

    .line 2001
    return-void
.end method
