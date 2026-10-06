.class public final Lcom/isaigu/gymapp/bodytech/BtAus$Ph;
.super Ljava/lang/Object;
.source "BtAus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtAus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ph"
.end annotation


# instance fields
.field public final beatHi:I

.field public final beatLo:I

.field public final burstHz:I

.field public final burstMs:I

.field public final carrier:I

.field public final feel:Ljava/lang/String;

.field public final ifc:Z

.field public final level:I

.field public final minutes:I

.field public final name:Ljava/lang/String;

.field public final offS:I

.field public final onS:I

.field public final rampS:I

.field public final sweepS:I

.field public final us:I

.field public final wave:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIZIII)V
    .registers 18

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->name:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->feel:Ljava/lang/String;

    .line 53
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->carrier:I

    .line 54
    iput p4, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->us:I

    .line 55
    iput p5, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->burstHz:I

    .line 56
    iput p6, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->burstMs:I

    .line 57
    iput p7, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->wave:I

    .line 58
    iput p8, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->onS:I

    .line 59
    iput p9, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->offS:I

    .line 60
    iput p10, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->rampS:I

    .line 61
    iput p11, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->minutes:I

    .line 62
    iput p12, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->level:I

    .line 63
    iput-boolean p13, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->ifc:Z

    .line 64
    iput p14, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatLo:I

    .line 65
    move/from16 v0, p15

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatHi:I

    .line 66
    move/from16 v0, p16

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->sweepS:I

    .line 67
    return-void
.end method
