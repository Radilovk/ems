.class Ljavax/mail/internet/MailDateParser;
.super Ljava/lang/Object;
.source "MailDateFormat.java"


# instance fields
.field index:I

.field orig:[C


# direct methods
.method public constructor <init>([CI)V
    .locals 1
    .param p1, "orig"    # [C
    .param p2, "index"    # I

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    .line 469
    iput-object p1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    .line 470
    iput p2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 471
    return-void
.end method


# virtual methods
.method getIndex()I
    .locals 1

    .prologue
    .line 911
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return v0
.end method

.method public parseAlphaTimeZone()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x74

    const/16 v7, 0x54

    .line 831
    const/4 v3, 0x0

    .line 832
    .local v3, "result":I
    const/4 v2, 0x0

    .line 836
    .local v2, "foundCommon":Z
    :try_start_0
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 883
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad Alpha TimeZone"

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :catch_0
    move-exception v1

    .line 886
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad Alpha TimeZone"

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 839
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :sswitch_0
    :try_start_1
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v4, v5
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 840
    .local v0, "curr":C
    if-eq v0, v7, :cond_0

    if-ne v0, v8, :cond_2

    .line 841
    :cond_0
    const/4 v3, 0x0

    .line 889
    .end local v0    # "curr":C
    :goto_0
    if-eqz v2, :cond_9

    .line 890
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v4, v5

    .line 891
    .restart local v0    # "curr":C
    const/16 v4, 0x53

    if-eq v0, v4, :cond_1

    const/16 v4, 0x73

    if-ne v0, v4, :cond_6

    .line 892
    :cond_1
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v4, v5

    .line 893
    if-eq v0, v7, :cond_9

    if-eq v0, v8, :cond_9

    .line 894
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad Alpha TimeZone"

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 844
    :cond_2
    :try_start_2
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad Alpha TimeZone"

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 848
    .end local v0    # "curr":C
    :sswitch_1
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v4, v5

    .line 849
    .restart local v0    # "curr":C
    const/16 v4, 0x4d

    if-eq v0, v4, :cond_3

    const/16 v4, 0x6d

    if-ne v0, v4, :cond_5

    .line 850
    :cond_3
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v4, v5

    .line 851
    if-eq v0, v7, :cond_4

    if-ne v0, v8, :cond_5

    .line 852
    :cond_4
    const/4 v3, 0x0

    .line 853
    goto :goto_0

    .line 856
    :cond_5
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad Alpha TimeZone"

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 860
    .end local v0    # "curr":C
    :sswitch_2
    const/16 v3, 0x12c

    .line 861
    const/4 v2, 0x1

    .line 862
    goto :goto_0

    .line 866
    :sswitch_3
    const/16 v3, 0x168

    .line 867
    const/4 v2, 0x1

    .line 868
    goto :goto_0

    .line 872
    :sswitch_4
    const/16 v3, 0x1a4

    .line 873
    const/4 v2, 0x1

    .line 874
    goto :goto_0

    .line 878
    :sswitch_5
    const/16 v3, 0x1e0

    .line 879
    const/4 v2, 0x1

    .line 880
    goto :goto_0

    .line 896
    .restart local v0    # "curr":C
    :cond_6
    const/16 v4, 0x44

    if-eq v0, v4, :cond_7

    const/16 v4, 0x64

    if-ne v0, v4, :cond_9

    .line 897
    :cond_7
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v4, v5

    .line 898
    if-eq v0, v7, :cond_8

    if-eq v0, v8, :cond_a

    .line 900
    :cond_8
    add-int/lit8 v3, v3, -0x3c

    .line 907
    .end local v0    # "curr":C
    :cond_9
    return v3

    .line 902
    .restart local v0    # "curr":C
    :cond_a
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad Alpha TimeZone"

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 836
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_3
        0x45 -> :sswitch_2
        0x47 -> :sswitch_1
        0x4d -> :sswitch_4
        0x50 -> :sswitch_5
        0x55 -> :sswitch_0
        0x63 -> :sswitch_3
        0x65 -> :sswitch_2
        0x67 -> :sswitch_1
        0x6d -> :sswitch_4
        0x70 -> :sswitch_5
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method public parseMonth()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x50

    const/16 v7, 0x4e

    const/16 v6, 0x43

    const/16 v5, 0x65

    const/16 v4, 0x45

    .line 661
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v1, :sswitch_data_0

    .line 773
    :cond_0
    :goto_0
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Bad Month"

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 665
    :sswitch_0
    :try_start_1
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 668
    :sswitch_1
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 669
    .local v0, "curr":C
    if-eq v0, v7, :cond_1

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    .line 670
    :cond_1
    const/4 v1, 0x0

    .line 765
    :goto_1
    return v1

    .line 676
    .end local v0    # "curr":C
    :sswitch_2
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 677
    .restart local v0    # "curr":C
    if-eq v0, v7, :cond_2

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_3

    .line 678
    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    .line 679
    :cond_3
    const/16 v1, 0x4c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    .line 680
    :cond_4
    const/4 v1, 0x6

    goto :goto_1

    .line 688
    .end local v0    # "curr":C
    :sswitch_3
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 689
    .restart local v0    # "curr":C
    if-eq v0, v4, :cond_5

    if-ne v0, v5, :cond_0

    .line 690
    :cond_5
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 691
    const/16 v1, 0x42

    if-eq v0, v1, :cond_6

    const/16 v1, 0x62

    if-ne v0, v1, :cond_0

    .line 692
    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 699
    .end local v0    # "curr":C
    :sswitch_4
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 700
    .restart local v0    # "curr":C
    const/16 v1, 0x41

    if-eq v0, v1, :cond_7

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    .line 701
    :cond_7
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 702
    const/16 v1, 0x52

    if-eq v0, v1, :cond_8

    const/16 v1, 0x72

    if-ne v0, v1, :cond_9

    .line 703
    :cond_8
    const/4 v1, 0x2

    goto :goto_1

    .line 704
    :cond_9
    const/16 v1, 0x59

    if-eq v0, v1, :cond_a

    const/16 v1, 0x79

    if-ne v0, v1, :cond_0

    .line 705
    :cond_a
    const/4 v1, 0x4

    goto :goto_1

    .line 712
    .end local v0    # "curr":C
    :sswitch_5
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 713
    .restart local v0    # "curr":C
    if-eq v0, v8, :cond_b

    const/16 v1, 0x70

    if-ne v0, v1, :cond_d

    .line 714
    :cond_b
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 715
    const/16 v1, 0x52

    if-eq v0, v1, :cond_c

    const/16 v1, 0x72

    if-ne v0, v1, :cond_0

    .line 716
    :cond_c
    const/4 v1, 0x3

    goto/16 :goto_1

    .line 718
    :cond_d
    const/16 v1, 0x55

    if-eq v0, v1, :cond_e

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    .line 719
    :cond_e
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 720
    const/16 v1, 0x47

    if-eq v0, v1, :cond_f

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    .line 721
    :cond_f
    const/4 v1, 0x7

    goto/16 :goto_1

    .line 728
    .end local v0    # "curr":C
    :sswitch_6
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 729
    .restart local v0    # "curr":C
    if-eq v0, v4, :cond_10

    if-ne v0, v5, :cond_0

    .line 730
    :cond_10
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 731
    if-eq v0, v8, :cond_11

    const/16 v1, 0x70

    if-ne v0, v1, :cond_0

    .line 732
    :cond_11
    const/16 v1, 0x8

    goto/16 :goto_1

    .line 739
    .end local v0    # "curr":C
    :sswitch_7
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 740
    .restart local v0    # "curr":C
    if-eq v0, v6, :cond_12

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 741
    :cond_12
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 742
    const/16 v1, 0x54

    if-eq v0, v1, :cond_13

    const/16 v1, 0x74

    if-ne v0, v1, :cond_0

    .line 743
    :cond_13
    const/16 v1, 0x9

    goto/16 :goto_1

    .line 750
    .end local v0    # "curr":C
    :sswitch_8
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 751
    .restart local v0    # "curr":C
    const/16 v1, 0x4f

    if-eq v0, v1, :cond_14

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    .line 752
    :cond_14
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 753
    const/16 v1, 0x56

    if-eq v0, v1, :cond_15

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    .line 754
    :cond_15
    const/16 v1, 0xa

    goto/16 :goto_1

    .line 761
    .end local v0    # "curr":C
    :sswitch_9
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 762
    .restart local v0    # "curr":C
    if-eq v0, v4, :cond_16

    if-ne v0, v5, :cond_0

    .line 763
    :cond_16
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 764
    if-eq v0, v6, :cond_17

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 765
    :cond_17
    const/16 v1, 0xb

    goto/16 :goto_1

    .line 770
    .end local v0    # "curr":C
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 661
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x44 -> :sswitch_9
        0x46 -> :sswitch_3
        0x4a -> :sswitch_0
        0x4d -> :sswitch_4
        0x4e -> :sswitch_8
        0x4f -> :sswitch_7
        0x53 -> :sswitch_6
        0x61 -> :sswitch_5
        0x64 -> :sswitch_9
        0x66 -> :sswitch_3
        0x6a -> :sswitch_0
        0x6d -> :sswitch_4
        0x6e -> :sswitch_8
        0x6f -> :sswitch_7
        0x73 -> :sswitch_6
    .end sparse-switch

    .line 665
    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_1
        0x55 -> :sswitch_2
        0x61 -> :sswitch_1
        0x75 -> :sswitch_2
    .end sparse-switch
.end method

.method public parseNumber()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 577
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v3

    .line 578
    .local v1, "length":I
    const/4 v0, 0x0

    .line 579
    .local v0, "gotNum":Z
    const/4 v2, 0x0

    .line 581
    .local v2, "result":I
    :goto_0
    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-lt v3, v1, :cond_1

    .line 644
    if-eqz v0, :cond_2

    .line 645
    :cond_0
    return v2

    .line 582
    :cond_1
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 634
    if-nez v0, :cond_0

    .line 637
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "No Number found"

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 584
    :pswitch_0
    mul-int/lit8 v2, v2, 0xa

    .line 585
    const/4 v0, 0x1

    .line 640
    :goto_1
    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_0

    .line 589
    :pswitch_1
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x1

    .line 590
    const/4 v0, 0x1

    .line 591
    goto :goto_1

    .line 594
    :pswitch_2
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x2

    .line 595
    const/4 v0, 0x1

    .line 596
    goto :goto_1

    .line 599
    :pswitch_3
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x3

    .line 600
    const/4 v0, 0x1

    .line 601
    goto :goto_1

    .line 604
    :pswitch_4
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x4

    .line 605
    const/4 v0, 0x1

    .line 606
    goto :goto_1

    .line 609
    :pswitch_5
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x5

    .line 610
    const/4 v0, 0x1

    .line 611
    goto :goto_1

    .line 614
    :pswitch_6
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x6

    .line 615
    const/4 v0, 0x1

    .line 616
    goto :goto_1

    .line 619
    :pswitch_7
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x7

    .line 620
    const/4 v0, 0x1

    .line 621
    goto :goto_1

    .line 624
    :pswitch_8
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x8

    .line 625
    const/4 v0, 0x1

    .line 626
    goto :goto_1

    .line 629
    :pswitch_9
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x9

    .line 630
    const/4 v0, 0x1

    .line 631
    goto :goto_1

    .line 648
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "No Number found"

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public parseNumericTimeZone()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 805
    const/4 v3, 0x0

    .line 806
    .local v3, "switchSign":Z
    iget-object v5, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v5, v6

    .line 807
    .local v0, "first":C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1

    .line 808
    const/4 v3, 0x1

    .line 813
    :cond_0
    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 814
    .local v2, "oindex":I
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v4

    .line 815
    .local v4, "tz":I
    const/16 v5, 0x960

    if-lt v4, v5, :cond_2

    .line 816
    new-instance v5, Ljava/text/ParseException;

    const-string v6, "Numeric TimeZone out of range"

    invoke-direct {v5, v6, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 809
    .end local v2    # "oindex":I
    .end local v4    # "tz":I
    :cond_1
    const/16 v5, 0x2d

    if-eq v0, v5, :cond_0

    .line 810
    new-instance v5, Ljava/text/ParseException;

    const-string v6, "Bad Numeric TimeZone"

    iget v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 817
    .restart local v2    # "oindex":I
    .restart local v4    # "tz":I
    :cond_2
    div-int/lit8 v5, v4, 0x64

    mul-int/lit8 v5, v5, 0x3c

    rem-int/lit8 v6, v4, 0x64

    add-int v1, v5, v6

    .line 818
    .local v1, "offset":I
    if-eqz v3, :cond_3

    .line 819
    neg-int v1, v1

    .line 821
    .end local v1    # "offset":I
    :cond_3
    return v1
.end method

.method public parseTimeZone()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 782
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v2, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 783
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "No more characters"

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 785
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 786
    .local v0, "test":C
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    .line 787
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumericTimeZone()I

    move-result v1

    .line 789
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseAlphaTimeZone()I

    move-result v1

    goto :goto_0
.end method

.method public peekChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 531
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    return v0

    .line 534
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipChar(C)V
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 542
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 543
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 544
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 551
    return-void

    .line 546
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Wrong char"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 549
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipIfChar(C)Z
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 558
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 559
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 560
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 561
    const/4 v0, 0x1

    .line 563
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 566
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipUntilNumber()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 482
    :goto_0
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 496
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "No Number Found"

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 493
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :pswitch_0
    return-void

    .line 482
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public skipWhiteSpace()V
    .locals 3

    .prologue
    .line 509
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v1

    .line 510
    .local v0, "len":I
    :goto_0
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-lt v1, v0, :cond_0

    .line 523
    :goto_1
    return-void

    .line 511
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 516
    :sswitch_0
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_0

    .line 511
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method
