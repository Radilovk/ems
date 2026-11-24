.class public final Lcom/isaigu/gymapp/ai/AiBrief$Json;
.super Ljava/lang/Object;
.source "AiBrief.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiBrief;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Json"
.end annotation


# instance fields
.field private i:I

.field private final s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    if-nez p1, :cond_7

    const-string p1, ""

    :cond_7
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    .line 633
    return-void
.end method

.method private array()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x5d

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 698
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    .line 699
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->ws()V

    .line 700
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->peek()C

    move-result v1

    if-ne v1, v3, :cond_1d

    .line 701
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    .line 712
    :goto_1c
    return-object v0

    .line 705
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->ws()V

    .line 707
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->peek()C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_36

    .line 708
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    goto :goto_1d

    .line 711
    :cond_36
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->expect(C)V

    goto :goto_1c
.end method

.method private expect(C)V
    .registers 5

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->peek()C

    move-result v0

    if-eq v0, p1, :cond_1f

    .line 748
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_1f
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    .line 751
    return-void
.end method

.method private object()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x7d

    .line 673
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 674
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    .line 675
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->ws()V

    .line 676
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->peek()C

    move-result v1

    if-ne v1, v3, :cond_1d

    .line 677
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    .line 692
    :goto_1c
    return-object v0

    .line 681
    :cond_1d
    :goto_1d
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->ws()V

    .line 682
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->string()Ljava/lang/String;

    move-result-object v1

    .line 683
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->ws()V

    .line 684
    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->expect(C)V

    .line 685
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->ws()V

    .line 687
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->peek()C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_45

    .line 688
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    goto :goto_1d

    .line 691
    :cond_45
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->expect(C)V

    goto :goto_1c
.end method

.method private peek()C
    .registers 3

    .prologue
    .line 743
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private string()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x22

    .line 717
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->expect(C)V

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    :goto_a
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_ab

    .line 720
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 721
    if-ne v1, v4, :cond_27

    .line 722
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 724
    :cond_27
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_a6

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_a6

    .line 725
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 726
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4b

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 727
    :cond_4b
    const/16 v2, 0x74

    if-ne v1, v2, :cond_55

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 728
    :cond_55
    const/16 v2, 0x72

    if-ne v1, v2, :cond_5f

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 729
    :cond_5f
    const/16 v2, 0x62

    if-ne v1, v2, :cond_69

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 730
    :cond_69
    const/16 v2, 0x66

    if-ne v1, v2, :cond_73

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 731
    :cond_73
    const/16 v2, 0x75

    if-ne v1, v2, :cond_a1

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_a1

    .line 732
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 733
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    goto/16 :goto_a

    .line 734
    :cond_a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 736
    :cond_a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 739
    :cond_ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ws()V
    .registers 3

    .prologue
    .line 754
    :goto_0
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 755
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    goto :goto_0

    .line 757
    :cond_1f
    return-void
.end method


# virtual methods
.method public value()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->ws()V

    .line 637
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_15

    .line 638
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_15
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 641
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_26

    .line 642
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->object()Ljava/util/Map;

    move-result-object v0

    .line 669
    :goto_25
    return-object v0

    .line 644
    :cond_26
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2f

    .line 645
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->array()Ljava/util/List;

    move-result-object v0

    goto :goto_25

    .line 647
    :cond_2f
    const/16 v1, 0x22

    if-ne v0, v1, :cond_38

    .line 648
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 650
    :cond_38
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    const-string v2, "true"

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 651
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    .line 652
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_25

    .line 654
    :cond_4d
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    const-string v2, "false"

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 655
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    .line 656
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_25

    .line 658
    :cond_62
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    const-string v2, "null"

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 659
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    .line 660
    const/4 v0, 0x0

    goto :goto_25

    .line 662
    :cond_76
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    .line 663
    :goto_78
    iget v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_99

    const-string v2, "+-0123456789.eE"

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    iget v4, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_99

    .line 664
    iget v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    goto :goto_78

    .line 666
    :cond_99
    iget v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    if-ne v1, v2, :cond_b6

    .line 667
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "char "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 669
    :cond_b6
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Json;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_25
.end method
