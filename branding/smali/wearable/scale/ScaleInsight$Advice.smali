.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;
.super Ljava/lang/Object;
.source "ScaleInsight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Advice"
.end annotation


# instance fields
.field public final kind:I

.field public final prio:I

.field public final textBg:Ljava/lang/String;

.field public final textEn:Ljava/lang/String;

.field public final titleBg:Ljava/lang/String;

.field public final titleEn:Ljava/lang/String;

.field public final tone:I


# direct methods
.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->prio:I

    .line 562
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->kind:I

    .line 563
    iput p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->tone:I

    .line 564
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->titleBg:Ljava/lang/String;

    .line 565
    iput-object p5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->textBg:Ljava/lang/String;

    .line 566
    iput-object p6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->titleEn:Ljava/lang/String;

    .line 567
    iput-object p7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->textEn:Ljava/lang/String;

    .line 568
    return-void
.end method
