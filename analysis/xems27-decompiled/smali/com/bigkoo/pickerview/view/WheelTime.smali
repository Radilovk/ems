.class public Lcom/bigkoo/pickerview/view/WheelTime;
.super Ljava/lang/Object;
.source "WheelTime.java"


# static fields
.field private static final DEFAULT_END_DAY:I = 0x1f

.field private static final DEFAULT_END_MONTH:I = 0xc

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_DAY:I = 0x1

.field private static final DEFAULT_START_MONTH:I = 0x1

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field public static dateFormat:Ljava/text/DateFormat;


# instance fields
.field private currentYear:I

.field private dividerColor:I

.field private dividerType:Lcom/contrarywind/view/WheelView$DividerType;

.field private endDay:I

.field private endMonth:I

.field private endYear:I

.field private gravity:I

.field private isLunarCalendar:Z

.field private lineSpacingMultiplier:F

.field private mSelectChangeCallback:Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

.field private startDay:I

.field private startMonth:I

.field private startYear:I

.field private textColorCenter:I

.field private textColorOut:I

.field private textSize:I

.field private type:[Z

.field private view:Landroid/view/View;

.field private wv_day:Lcom/contrarywind/view/WheelView;

.field private wv_hours:Lcom/contrarywind/view/WheelView;

.field private wv_minutes:Lcom/contrarywind/view/WheelView;

.field private wv_month:Lcom/contrarywind/view/WheelView;

.field private wv_seconds:Lcom/contrarywind/view/WheelView;

.field private wv_year:Lcom/contrarywind/view/WheelView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bigkoo/pickerview/view/WheelTime;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;[ZII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # [Z
    .param p3, "gravity"    # I
    .param p4, "textSize"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x76c

    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    .line 41
    const/16 v0, 0x834

    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    .line 43
    const/16 v1, 0xc

    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    .line 44
    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    .line 45
    const/16 v0, 0x1f

    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->isLunarCalendar:Z

    .line 62
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    .line 63
    iput-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    .line 64
    iput p3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    .line 65
    iput p4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    .line 66
    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/view/WheelTime;->setView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/WheelTime;

    .line 21
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    return v0
.end method

.method static synthetic access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/WheelTime;

    .line 21
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/WheelTime;

    .line 21
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    return v0
.end method

.method static synthetic access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/WheelTime;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/util/List;
    .param p6, "x6"    # Ljava/util/List;

    .line 21
    invoke-direct/range {p0 .. p6}, Lcom/bigkoo/pickerview/view/WheelTime;->setReDay(IIIILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/WheelTime;

    .line 21
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/WheelTime;

    .line 21
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->mSelectChangeCallback:Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/WheelTime;

    .line 21
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/WheelTime;

    .line 21
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->currentYear:I

    return v0
.end method

.method static synthetic access$502(Lcom/bigkoo/pickerview/view/WheelTime;I)I
    .locals 0
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/WheelTime;
    .param p1, "x1"    # I

    .line 21
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->currentYear:I

    return p1
.end method

.method static synthetic access$600(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/WheelTime;

    .line 21
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    return v0
.end method

.method static synthetic access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/WheelTime;

    .line 21
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    return v0
.end method

.method static synthetic access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/WheelTime;

    .line 21
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    return v0
.end method

.method static synthetic access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/WheelTime;

    .line 21
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    return v0
.end method

.method private getLunarTime()Ljava/lang/String;
    .locals 8

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    add-int/2addr v1, v2

    .line 759
    .local v1, "year":I
    const/4 v2, 0x1

    .line 760
    .local v2, "month":I
    const/4 v3, 0x0

    .line 761
    .local v3, "isLeapMonth":Z
    invoke-static {v1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 762
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v4

    add-int/2addr v4, v5

    .end local v2    # "month":I
    .local v4, "month":I
    goto :goto_0

    .line 764
    .end local v4    # "month":I
    .restart local v2    # "month":I
    :cond_0
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v6

    sub-int/2addr v4, v6

    if-gtz v4, :cond_1

    .line 765
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v4

    add-int/2addr v4, v5

    .end local v2    # "month":I
    .restart local v4    # "month":I
    goto :goto_0

    .line 766
    .end local v4    # "month":I
    .restart local v2    # "month":I
    :cond_1
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v6

    sub-int/2addr v4, v6

    if-ne v4, v5, :cond_2

    .line 767
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v4

    .line 768
    .end local v2    # "month":I
    .restart local v4    # "month":I
    const/4 v3, 0x1

    goto :goto_0

    .line 770
    .end local v4    # "month":I
    .restart local v2    # "month":I
    :cond_2
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v4}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v4

    .line 773
    .end local v2    # "month":I
    .restart local v4    # "month":I
    :goto_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v5

    .line 774
    .local v2, "day":I
    invoke-static {v1, v4, v2, v3}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v6

    .line 776
    .local v6, "solar":[I
    const/4 v7, 0x0

    aget v7, v6, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v6, v5

    .line 777
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget v5, v6, v5

    .line 778
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    .line 779
    invoke-virtual {v5}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    .line 780
    invoke-virtual {v7}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    .line 781
    invoke-virtual {v5}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private setChangedListener(Lcom/contrarywind/view/WheelView;)V
    .locals 1
    .param p1, "wheelView"    # Lcom/contrarywind/view/WheelView;

    .line 543
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->mSelectChangeCallback:Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    if-eqz v0, :cond_0

    .line 544
    new-instance v0, Lcom/bigkoo/pickerview/view/WheelTime$5;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/view/WheelTime$5;-><init>(Lcom/bigkoo/pickerview/view/WheelTime;)V

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    .line 552
    :cond_0
    return-void
.end method

.method private setContentTextSize()V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 597
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 598
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 599
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 600
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 601
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 602
    return-void
.end method

.method private setDividerColor()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 624
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 625
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 626
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 627
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 628
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 629
    return-void
.end method

.method private setDividerType()V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 634
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 635
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 636
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 637
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 638
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 640
    return-void
.end method

.method private setLineSpacingMultiplier()V
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 644
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 645
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 646
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 647
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 648
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 649
    return-void
.end method

.method private setLunar(IIIZIII)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "isLeap"    # Z
    .param p5, "h"    # I
    .param p6, "m"    # I
    .param p7, "s"    # I

    .line 103
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v1, Lcom/bigkoo/pickerview/R$id;->year:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/contrarywind/view/WheelView;

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    .line 104
    new-instance v1, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    iget v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    invoke-static {v2, v3}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getYears(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 105
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 107
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 110
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v2, Lcom/bigkoo/pickerview/R$id;->month:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/contrarywind/view/WheelView;

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    .line 111
    new-instance v2, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getMonths(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 112
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 114
    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v0

    .line 115
    .local v0, "leapMonth":I
    if-eqz v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-gt p2, v2, :cond_0

    if-eqz p4, :cond_1

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2, p2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 124
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v3, Lcom/bigkoo/pickerview/R$id;->day:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/contrarywind/view/WheelView;

    iput-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    .line 126
    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v3, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-static {p1, p2}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result v4

    invoke-static {v4}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarDays(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_1

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v3, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapDays(I)I

    move-result v4

    invoke-static {v4}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarDays(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 131
    :goto_1
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2, v1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 133
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 135
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v2, Lcom/bigkoo/pickerview/R$id;->hour:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/contrarywind/view/WheelView;

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    .line 136
    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 138
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, p5}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 139
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 141
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v2, Lcom/bigkoo/pickerview/R$id;->min:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/contrarywind/view/WheelView;

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    .line 142
    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/16 v3, 0x3b

    invoke-direct {v2, v4, v3}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 144
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, p6}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 145
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 147
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v2, Lcom/bigkoo/pickerview/R$id;->second:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/contrarywind/view/WheelView;

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    .line 148
    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v2, v4, v3}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 150
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, p6}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 151
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 154
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/view/WheelTime$1;

    invoke-direct {v2, p0}, Lcom/bigkoo/pickerview/view/WheelTime$1;-><init>(Lcom/bigkoo/pickerview/view/WheelTime;)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    .line 191
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/view/WheelTime$2;

    invoke-direct {v2, p0}, Lcom/bigkoo/pickerview/view/WheelTime$2;-><init>(Lcom/bigkoo/pickerview/view/WheelTime;)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    .line 220
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, v1}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 221
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, v1}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 222
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, v1}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 223
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, v1}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 225
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    array-length v2, v1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_9

    .line 228
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    aget-boolean v1, v1, v4

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 v5, 0x1

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 230
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 v5, 0x2

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 v5, 0x3

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 v5, 0x4

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    const/16 v2, 0x8

    :goto_6
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 v5, 0x5

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    const/16 v4, 0x8

    :goto_7
    invoke-virtual {v1, v4}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 234
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setContentTextSize()V

    .line 235
    return-void

    .line 226
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "type[] length is not 6"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setReDay(IIIILjava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "year_num"    # I
    .param p2, "monthNum"    # I
    .param p3, "startD"    # I
    .param p4, "endD"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 556
    .local p5, "list_big":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "list_little":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    .line 559
    .local v0, "currentItem":I
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    const/16 v1, 0x1f

    if-le p4, v1, :cond_0

    .line 561
    const/16 p4, 0x1f

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v2, p3, p4}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_0

    .line 565
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 566
    const/16 v1, 0x1e

    if-le p4, v1, :cond_2

    .line 567
    const/16 p4, 0x1e

    .line 569
    :cond_2
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v2, p3, p4}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_0

    .line 572
    :cond_3
    rem-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_4

    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_5

    :cond_4
    rem-int/lit16 v1, p1, 0x190

    if-nez v1, :cond_7

    .line 574
    :cond_5
    const/16 v1, 0x1d

    if-le p4, v1, :cond_6

    .line 575
    const/16 p4, 0x1d

    .line 577
    :cond_6
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v2, p3, p4}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_0

    .line 580
    :cond_7
    const/16 v1, 0x1c

    if-le p4, v1, :cond_8

    .line 581
    const/16 p4, 0x1c

    .line 583
    :cond_8
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v2, p3, p4}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 588
    :goto_0
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_9

    .line 589
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 590
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1, v0}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 592
    :cond_9
    return-void
.end method

.method private setSolar(IIIIII)V
    .locals 15
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "h"    # I
    .param p5, "m"    # I
    .param p6, "s"    # I

    .line 249
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "1"

    const-string v4, "3"

    const-string v5, "5"

    const-string v6, "7"

    const-string v7, "8"

    const-string v8, "10"

    const-string v9, "12"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "months_big":[Ljava/lang/String;
    const-string v4, "4"

    const-string v5, "6"

    const-string v6, "9"

    const-string v7, "11"

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "months_little":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 253
    .local v5, "list_big":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 255
    .local v6, "list_little":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->currentYear:I

    .line 257
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v8, Lcom/bigkoo/pickerview/R$id;->year:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/contrarywind/view/WheelView;

    iput-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    .line 258
    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    iget v10, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    invoke-direct {v8, v9, v10}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 261
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    sub-int v8, v1, v8

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 262
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 264
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v8, Lcom/bigkoo/pickerview/R$id;->month:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/contrarywind/view/WheelView;

    iput-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    .line 265
    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    const/4 v10, 0x1

    if-ne v8, v9, :cond_0

    .line 266
    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    iget v11, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    invoke-direct {v8, v9, v11}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 267
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v8, v2, 0x1

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 268
    :cond_0
    const/16 v11, 0xc

    if-ne v1, v8, :cond_1

    .line 270
    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    invoke-direct {v8, v9, v11}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 271
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v8, v2, 0x1

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 272
    :cond_1
    if-ne v1, v9, :cond_2

    .line 274
    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    invoke-direct {v8, v10, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 275
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v7, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 277
    :cond_2
    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v8, v10, v11}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 278
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v7, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 280
    :goto_0
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 282
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v8, Lcom/bigkoo/pickerview/R$id;->day:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/contrarywind/view/WheelView;

    iput-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    .line 284
    iget v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    const/16 v9, 0x1c

    const/16 v11, 0x1d

    const/16 v12, 0x1e

    const/16 v13, 0x1f

    if-ne v7, v8, :cond_c

    iget v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    if-ne v7, v8, :cond_c

    .line 285
    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 286
    iget v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v7, v13, :cond_3

    .line 287
    iput v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 289
    :cond_3
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    iget v11, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v8, v9, v11}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_1

    .line 290
    :cond_4
    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 291
    iget v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v7, v12, :cond_5

    .line 292
    iput v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 294
    :cond_5
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    iget v11, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v8, v9, v11}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_1

    .line 297
    :cond_6
    rem-int/lit8 v7, v1, 0x4

    if-nez v7, :cond_7

    rem-int/lit8 v7, v1, 0x64

    if-nez v7, :cond_8

    :cond_7
    rem-int/lit16 v7, v1, 0x190

    if-nez v7, :cond_a

    .line 298
    :cond_8
    iget v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v7, v11, :cond_9

    .line 299
    iput v11, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 301
    :cond_9
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    iget v11, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v8, v9, v11}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_1

    .line 303
    :cond_a
    iget v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v7, v9, :cond_b

    .line 304
    iput v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 306
    :cond_b
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    iget v11, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v8, v9, v11}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 309
    :goto_1
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    sub-int v8, p3, v8

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto/16 :goto_5

    .line 310
    :cond_c
    iget v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    if-ne v1, v7, :cond_12

    add-int/lit8 v7, v2, 0x1

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    if-ne v7, v8, :cond_12

    .line 312
    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 314
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    invoke-direct {v8, v9, v13}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_2

    .line 315
    :cond_d
    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 317
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    invoke-direct {v8, v9, v12}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_2

    .line 320
    :cond_e
    rem-int/lit8 v7, v1, 0x4

    if-nez v7, :cond_f

    rem-int/lit8 v7, v1, 0x64

    if-nez v7, :cond_10

    :cond_f
    rem-int/lit16 v7, v1, 0x190

    if-nez v7, :cond_11

    .line 322
    :cond_10
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    invoke-direct {v8, v9, v11}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_2

    .line 325
    :cond_11
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v11, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    invoke-direct {v8, v11, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 328
    :goto_2
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    sub-int v8, p3, v8

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto/16 :goto_5

    .line 329
    :cond_12
    iget v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    if-ne v1, v7, :cond_1c

    add-int/lit8 v7, v2, 0x1

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    if-ne v7, v8, :cond_1c

    .line 331
    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 332
    iget v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v7, v13, :cond_13

    .line 333
    iput v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 335
    :cond_13
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v8, v10, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_3

    .line 336
    :cond_14
    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 337
    iget v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v7, v12, :cond_15

    .line 338
    iput v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 340
    :cond_15
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v8, v10, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_3

    .line 343
    :cond_16
    rem-int/lit8 v7, v1, 0x4

    if-nez v7, :cond_17

    rem-int/lit8 v7, v1, 0x64

    if-nez v7, :cond_18

    :cond_17
    rem-int/lit16 v7, v1, 0x190

    if-nez v7, :cond_1a

    .line 344
    :cond_18
    iget v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v7, v11, :cond_19

    .line 345
    iput v11, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 347
    :cond_19
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v8, v10, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_3

    .line 349
    :cond_1a
    iget v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v7, v9, :cond_1b

    .line 350
    iput v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 352
    :cond_1b
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v8, v10, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 355
    :goto_3
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v8, p3, -0x1

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_5

    .line 358
    :cond_1c
    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 360
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v8, v10, v13}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_4

    .line 361
    :cond_1d
    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 363
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v8, v10, v12}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_4

    .line 366
    :cond_1e
    rem-int/lit8 v7, v1, 0x4

    if-nez v7, :cond_1f

    rem-int/lit8 v7, v1, 0x64

    if-nez v7, :cond_20

    :cond_1f
    rem-int/lit16 v7, v1, 0x190

    if-nez v7, :cond_21

    .line 368
    :cond_20
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v8, v10, v11}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_4

    .line 371
    :cond_21
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v8, v10, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 374
    :goto_4
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v8, p3, -0x1

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 377
    :goto_5
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 379
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v8, Lcom/bigkoo/pickerview/R$id;->hour:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/contrarywind/view/WheelView;

    iput-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    .line 380
    new-instance v8, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/16 v9, 0x17

    const/4 v11, 0x0

    invoke-direct {v8, v11, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 382
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    move/from16 v8, p4

    invoke-virtual {v7, v8}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 383
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v7, v9}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 385
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v9, Lcom/bigkoo/pickerview/R$id;->min:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/contrarywind/view/WheelView;

    iput-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    .line 386
    new-instance v9, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/16 v12, 0x3b

    invoke-direct {v9, v11, v12}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v9}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 388
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    move/from16 v9, p5

    invoke-virtual {v7, v9}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 389
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v7, v13}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 391
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v13, Lcom/bigkoo/pickerview/R$id;->second:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/contrarywind/view/WheelView;

    iput-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    .line 392
    new-instance v13, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v13, v11, v12}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v7, v13}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 394
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    move/from16 v12, p6

    invoke-virtual {v7, v12}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 395
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v7, v13}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 398
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    new-instance v13, Lcom/bigkoo/pickerview/view/WheelTime$3;

    invoke-direct {v13, p0, v5, v6}, Lcom/bigkoo/pickerview/view/WheelTime$3;-><init>(Lcom/bigkoo/pickerview/view/WheelTime;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v13}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    .line 477
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    new-instance v13, Lcom/bigkoo/pickerview/view/WheelTime$4;

    invoke-direct {v13, p0, v5, v6}, Lcom/bigkoo/pickerview/view/WheelTime$4;-><init>(Lcom/bigkoo/pickerview/view/WheelTime;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v13}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    .line 525
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, v7}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 526
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, v7}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 527
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, v7}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 528
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, v7}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 530
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    array-length v13, v7

    const/4 v14, 0x6

    if-ne v13, v14, :cond_28

    .line 533
    iget-object v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    aget-boolean v7, v7, v11

    const/16 v14, 0x8

    if-eqz v7, :cond_22

    const/4 v7, 0x0

    goto :goto_6

    :cond_22
    const/16 v7, 0x8

    :goto_6
    invoke-virtual {v13, v7}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 534
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget-object v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    aget-boolean v10, v13, v10

    if-eqz v10, :cond_23

    const/4 v10, 0x0

    goto :goto_7

    :cond_23
    const/16 v10, 0x8

    :goto_7
    invoke-virtual {v7, v10}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 535
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget-object v10, v0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 v13, 0x2

    aget-boolean v10, v10, v13

    if-eqz v10, :cond_24

    const/4 v10, 0x0

    goto :goto_8

    :cond_24
    const/16 v10, 0x8

    :goto_8
    invoke-virtual {v7, v10}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 536
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget-object v10, v0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 v13, 0x3

    aget-boolean v10, v10, v13

    if-eqz v10, :cond_25

    const/4 v10, 0x0

    goto :goto_9

    :cond_25
    const/16 v10, 0x8

    :goto_9
    invoke-virtual {v7, v10}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 537
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget-object v10, v0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 v13, 0x4

    aget-boolean v10, v10, v13

    if-eqz v10, :cond_26

    const/4 v10, 0x0

    goto :goto_a

    :cond_26
    const/16 v10, 0x8

    :goto_a
    invoke-virtual {v7, v10}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 538
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget-object v10, v0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 v13, 0x5

    aget-boolean v10, v10, v13

    if-eqz v10, :cond_27

    goto :goto_b

    :cond_27
    const/16 v11, 0x8

    :goto_b
    invoke-virtual {v7, v11}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 539
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setContentTextSize()V

    .line 540
    return-void

    .line 531
    :cond_28
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v10, "type[] length is not 6"

    invoke-direct {v7, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private setTextColorCenter()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 615
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 616
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 617
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 618
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 619
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 620
    return-void
.end method

.method private setTextColorOut()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 606
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 607
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 608
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 609
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 610
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 611
    return-void
.end method


# virtual methods
.method public getEndYear()I
    .locals 1

    .line 802
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    return v0
.end method

.method public getStartYear()I
    .locals 1

    .line 794
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 6

    .line 714
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->isLunarCalendar:Z

    if-eqz v0, :cond_0

    .line 716
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->getLunarTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 718
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->currentYear:I

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    const-string v3, " "

    const-string v4, ":"

    const-string v5, "-"

    if-ne v1, v2, :cond_2

    .line 722
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    add-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 723
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    .line 724
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    .line 725
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    .line 726
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    .line 727
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    .line 728
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 730
    :cond_1
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    .line 731
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    .line 732
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    .line 733
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    .line 734
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    .line 735
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    .line 740
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    .line 741
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    .line 742
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    .line 743
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    .line 744
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 747
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    return-object v0
.end method

.method public isCenterLabel(Z)V
    .locals 1
    .param p1, "isCenterLabel"    # Z

    .line 921
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 922
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 923
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 924
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 925
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 926
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 927
    return-void
.end method

.method public isLunarMode()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->isLunarCalendar:Z

    return v0
.end method

.method public setCyclic(Z)V
    .locals 1
    .param p1, "cyclic"    # Z

    .line 705
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 706
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 707
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 708
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 709
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 710
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 711
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .line 883
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    .line 884
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setDividerColor()V

    .line 885
    return-void
.end method

.method public setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V
    .locals 0
    .param p1, "dividerType"    # Lcom/contrarywind/view/WheelView$DividerType;

    .line 893
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    .line 894
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setDividerType()V

    .line 895
    return-void
.end method

.method public setEndYear(I)V
    .locals 0
    .param p1, "endYear"    # I

    .line 806
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    .line 807
    return-void
.end method

.method public setLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "label_year"    # Ljava/lang/String;
    .param p2, "label_month"    # Ljava/lang/String;
    .param p3, "label_day"    # Ljava/lang/String;
    .param p4, "label_hours"    # Ljava/lang/String;
    .param p5, "label_mins"    # Ljava/lang/String;
    .param p6, "label_seconds"    # Ljava/lang/String;

    .line 652
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->isLunarCalendar:Z

    if-eqz v0, :cond_0

    .line 653
    return-void

    .line 656
    :cond_0
    if-eqz p1, :cond_1

    .line 657
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/R$string;->pickerview_year:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 661
    :goto_0
    if-eqz p2, :cond_2

    .line 662
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/R$string;->pickerview_month:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 666
    :goto_1
    if-eqz p3, :cond_3

    .line 667
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p3}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_2

    .line 669
    :cond_3
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/R$string;->pickerview_day:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 671
    :goto_2
    if-eqz p4, :cond_4

    .line 672
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p4}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_3

    .line 674
    :cond_4
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/R$string;->pickerview_hours:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 676
    :goto_3
    if-eqz p5, :cond_5

    .line 677
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p5}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_4

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/R$string;->pickerview_minutes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 681
    :goto_4
    if-eqz p6, :cond_6

    .line 682
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p6}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_5

    .line 684
    :cond_6
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/bigkoo/pickerview/R$string;->pickerview_seconds:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 687
    :goto_5
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 0
    .param p1, "lineSpacingMultiplier"    # F

    .line 873
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    .line 874
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setLineSpacingMultiplier()V

    .line 875
    return-void
.end method

.method public setLunarMode(Z)V
    .locals 0
    .param p1, "isLunarCalendar"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->isLunarCalendar:Z

    .line 72
    return-void
.end method

.method public setPicker(III)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 79
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/bigkoo/pickerview/view/WheelTime;->setPicker(IIIIII)V

    .line 80
    return-void
.end method

.method public setPicker(IIIIII)V
    .locals 12
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "h"    # I
    .param p5, "m"    # I
    .param p6, "s"    # I

    .line 83
    move-object v8, p0

    iget-boolean v0, v8, Lcom/bigkoo/pickerview/view/WheelTime;->isLunarCalendar:Z

    if-eqz v0, :cond_1

    .line 84
    add-int/lit8 v0, p2, 0x1

    move v9, p1

    move v10, p3

    invoke-static {p1, v0, p3}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->solarToLunar(III)[I

    move-result-object v11

    .line 85
    .local v11, "lunar":[I
    const/4 v0, 0x0

    aget v1, v11, v0

    const/4 v2, 0x1

    aget v3, v11, v2

    sub-int/2addr v3, v2

    const/4 v4, 0x2

    aget v4, v11, v4

    const/4 v5, 0x3

    aget v5, v11, v5

    if-ne v5, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bigkoo/pickerview/view/WheelTime;->setLunar(IIIZIII)V

    .line 86
    .end local v11    # "lunar":[I
    goto :goto_1

    .line 87
    :cond_1
    move v9, p1

    move v10, p3

    invoke-direct/range {p0 .. p6}, Lcom/bigkoo/pickerview/view/WheelTime;->setSolar(IIIIII)V

    .line 89
    :goto_1
    return-void
.end method

.method public setRangDate(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "startDate"    # Ljava/util/Calendar;
    .param p2, "endDate"    # Ljava/util/Calendar;

    .line 812
    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 813
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 814
    .local v3, "year":I
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 815
    .local v1, "month":I
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 816
    .local v0, "day":I
    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    if-le v3, v2, :cond_0

    .line 817
    iput v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    .line 818
    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    .line 819
    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    goto :goto_0

    .line 820
    :cond_0
    if-ne v3, v2, :cond_2

    .line 821
    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    if-le v1, v2, :cond_1

    .line 822
    iput v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    .line 823
    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    .line 824
    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    goto :goto_0

    .line 825
    :cond_1
    if-ne v1, v2, :cond_2

    .line 826
    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    if-le v0, v2, :cond_2

    .line 827
    iput v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    .line 828
    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    .line 829
    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 834
    .end local v0    # "day":I
    .end local v1    # "month":I
    .end local v3    # "year":I
    :cond_2
    :goto_0
    goto :goto_2

    :cond_3
    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    .line 835
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 836
    .restart local v3    # "year":I
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 837
    .restart local v1    # "month":I
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 838
    .restart local v0    # "day":I
    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    if-ge v3, v2, :cond_4

    .line 839
    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    .line 840
    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    .line 841
    iput v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    goto :goto_1

    .line 842
    :cond_4
    if-ne v3, v2, :cond_7

    .line 843
    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    if-ge v1, v2, :cond_5

    .line 844
    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    .line 845
    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    .line 846
    iput v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    goto :goto_1

    .line 847
    :cond_5
    if-ne v1, v2, :cond_7

    .line 848
    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-ge v0, v2, :cond_7

    .line 849
    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    .line 850
    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    .line 851
    iput v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    goto :goto_1

    .line 856
    .end local v0    # "day":I
    .end local v1    # "month":I
    .end local v3    # "year":I
    :cond_6
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 857
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    .line 858
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    .line 859
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    .line 860
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    .line 861
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    .line 862
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    goto :goto_2

    .line 856
    :cond_7
    :goto_1
    nop

    .line 865
    :goto_2
    return-void
.end method

.method public setSelectChangeCallback(Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;)V
    .locals 0
    .param p1, "mSelectChangeCallback"    # Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    .line 930
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->mSelectChangeCallback:Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    .line 931
    return-void
.end method

.method public setStartYear(I)V
    .locals 0
    .param p1, "startYear"    # I

    .line 798
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    .line 799
    return-void
.end method

.method public setTextColorCenter(I)V
    .locals 0
    .param p1, "textColorCenter"    # I

    .line 903
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    .line 904
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setTextColorCenter()V

    .line 905
    return-void
.end method

.method public setTextColorOut(I)V
    .locals 0
    .param p1, "textColorOut"    # I

    .line 913
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    .line 914
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setTextColorOut()V

    .line 915
    return-void
.end method

.method public setTextXOffset(IIIIII)V
    .locals 1
    .param p1, "x_offset_year"    # I
    .param p2, "x_offset_month"    # I
    .param p3, "x_offset_day"    # I
    .param p4, "x_offset_hours"    # I
    .param p5, "x_offset_minutes"    # I
    .param p6, "x_offset_seconds"    # I

    .line 691
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 692
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p2}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 693
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p3}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 694
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p4}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 695
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p5}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 696
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p6}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 697
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 790
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    .line 791
    return-void
.end method
