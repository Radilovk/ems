.class final Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Filter;
.super Ljava/lang/Object;
.source "ScaleSources.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Filter"
.end annotation


# instance fields
.field final tier:I

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleSources;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleSources;I)V
    .registers 3

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Filter;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleSources;

    .line 453
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Filter;->tier:I

    .line 454
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 458
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 459
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Filter;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleSources;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Filter;->tier:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->filter:I

    .line 460
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Filter;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleSources;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->filterChips()V

    .line 461
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Filter;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleSources;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->build()V

    .line 462
    return-void
.end method
