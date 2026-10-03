.class final Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;
.super Ljava/lang/Object;
.source "ScaleLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Beat"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

.field final token:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;I)V
    .registers 3

    .prologue
    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 893
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;->token:I

    .line 894
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 898
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;->token:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->beat(I)V

    .line 899
    return-void
.end method
