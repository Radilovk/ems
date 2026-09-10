.class Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Iso8601_Rule"
.end annotation


# static fields
.field static final ISO8601_HOURS:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

.field static final ISO8601_HOURS_COLON_MINUTES:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

.field static final ISO8601_HOURS_MINUTES:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;


# instance fields
.field final length:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1441
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    .line 1443
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_MINUTES:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    .line 1445
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_COLON_MINUTES:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 1474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1475
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->length:I

    .line 1476
    return-void
.end method

.method static getRule(I)Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;
    .locals 2
    .param p0, "tokenLen"    # I

    .prologue
    .line 1455
    packed-switch p0, :pswitch_data_0

    .line 1463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid number of X"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1457
    :pswitch_0
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    .line 1461
    :goto_0
    return-object v0

    .line 1459
    :pswitch_1
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_MINUTES:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    goto :goto_0

    .line 1461
    :pswitch_2
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_COLON_MINUTES:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    goto :goto_0

    .line 1455
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1491
    const/16 v3, 0xf

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int v2, v3, v4

    .line 1492
    .local v2, "offset":I
    if-nez v2, :cond_1

    .line 1493
    const-string v3, "Z"

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1517
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    if-gez v2, :cond_3

    .line 1498
    const/16 v3, 0x2d

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1499
    neg-int v2, v2

    .line 1504
    :goto_1
    const v3, 0x36ee80

    div-int v0, v2, v3

    .line 1505
    .local v0, "hours":I
    invoke-static {p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    .line 1507
    iget v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->length:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 1511
    iget v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->length:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 1512
    const/16 v3, 0x3a

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1515
    :cond_2
    const v3, 0xea60

    div-int v3, v2, v3

    mul-int/lit8 v4, v0, 0x3c

    sub-int v1, v3, v4

    .line 1516
    .local v1, "minutes":I
    invoke-static {p1, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    goto :goto_0

    .line 1501
    .end local v0    # "hours":I
    .end local v1    # "minutes":I
    :cond_3
    const/16 v3, 0x2b

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1
.end method

.method public estimateLength()I
    .locals 1

    .prologue
    .line 1483
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->length:I

    return v0
.end method
