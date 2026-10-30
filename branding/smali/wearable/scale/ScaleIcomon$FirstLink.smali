.class final Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$FirstLink;
.super Ljava/lang/Object;
.source "ScaleIcomon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FirstLink"
.end annotation


# instance fields
.field final s:Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;

.field final token:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;I)V
    .registers 3

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$FirstLink;->s:Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;

    .line 459
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$FirstLink;->token:I

    .line 460
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$FirstLink;->s:Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$FirstLink;->token:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->firstLink(I)V

    .line 465
    return-void
.end method
