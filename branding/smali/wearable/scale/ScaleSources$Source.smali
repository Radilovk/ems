.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;
.super Ljava/lang/Object;
.source "ScaleSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Source"
.end annotation


# instance fields
.field public final cite:Ljava/lang/String;

.field public final doi:Ljava/lang/String;

.field public final n:I

.field public final tier:I

.field public final topicBg:Ljava/lang/String;

.field public final topicEn:Ljava/lang/String;

.field public final useBg:Ljava/lang/String;

.field public final useEn:Ljava/lang/String;

.field public final whoBg:Ljava/lang/String;

.field public final whoEn:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->tier:I

    .line 54
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->topicBg:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->topicEn:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->useBg:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->useEn:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->cite:Ljava/lang/String;

    .line 59
    iput-object p7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->whoBg:Ljava/lang/String;

    .line 60
    iput-object p8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->whoEn:Ljava/lang/String;

    .line 61
    iput p9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->n:I

    .line 62
    iput-object p10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->doi:Ljava/lang/String;

    .line 63
    return-void
.end method
