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

    .line 831
    const-string v0, "Bad Alpha TimeZone"

    const/4 v1, 0x0

    .line 832
    .local v1, "result":I
    const/4 v2, 0x0

    .line 836
    .local v2, "foundCommon":Z
    :try_start_0
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v4

    const/16 v4, 0x74

    const/16 v6, 0x54

    sparse-switch v3, :sswitch_data_0

    .line 883
    new-instance v3, Ljava/text/ParseException;

    goto/16 :goto_6

    .line 839
    :sswitch_0
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v5

    .line 840
    .local v3, "curr":C
    if-eq v3, v6, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 844
    :cond_0
    new-instance v4, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v0, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "result":I
    .end local v2    # "foundCommon":Z
    throw v4

    .line 841
    .restart local v1    # "result":I
    .restart local v2    # "foundCommon":Z
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 842
    goto :goto_2

    .line 878
    .end local v3    # "curr":C
    :sswitch_1
    const/16 v1, 0x1e0

    .line 879
    const/4 v2, 0x1

    .line 880
    goto :goto_2

    .line 872
    :sswitch_2
    const/16 v1, 0x1a4

    .line 873
    const/4 v2, 0x1

    .line 874
    goto :goto_2

    .line 848
    :sswitch_3
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v5

    .line 849
    .restart local v3    # "curr":C
    const/16 v5, 0x4d

    if-eq v3, v5, :cond_2

    const/16 v5, 0x6d

    if-ne v3, v5, :cond_3

    .line 850
    :cond_2
    iget-object v5, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v5, v5, v7

    move v3, v5

    .line 851
    if-eq v3, v6, :cond_4

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 856
    :cond_3
    new-instance v4, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v0, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "result":I
    .end local v2    # "foundCommon":Z
    throw v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    .restart local v1    # "result":I
    .restart local v2    # "foundCommon":Z
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 853
    goto :goto_2

    .line 860
    .end local v3    # "curr":C
    :sswitch_4
    const/16 v1, 0x12c

    .line 861
    const/4 v2, 0x1

    .line 862
    goto :goto_2

    .line 866
    :sswitch_5
    const/16 v1, 0x168

    .line 867
    const/4 v2, 0x1

    .line 868
    nop

    .line 889
    :goto_2
    if-eqz v2, :cond_b

    .line 890
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v5

    .line 891
    .restart local v3    # "curr":C
    const/16 v5, 0x53

    if-eq v3, v5, :cond_9

    const/16 v5, 0x73

    if-ne v3, v5, :cond_5

    goto :goto_4

    .line 896
    :cond_5
    const/16 v5, 0x44

    if-eq v3, v5, :cond_6

    const/16 v5, 0x64

    if-ne v3, v5, :cond_b

    .line 897
    :cond_6
    iget-object v5, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v5, v7

    .line 898
    if-eq v3, v6, :cond_8

    if-eq v3, v4, :cond_7

    goto :goto_3

    .line 902
    :cond_7
    new-instance v4, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v0, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 900
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, -0x3c

    .line 901
    goto :goto_5

    .line 892
    :cond_9
    :goto_4
    iget-object v5, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v5, v7

    .line 893
    if-eq v3, v6, :cond_b

    if-ne v3, v4, :cond_a

    goto :goto_5

    .line 894
    :cond_a
    new-instance v4, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v0, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 907
    .end local v3    # "curr":C
    :cond_b
    :goto_5
    return v1

    .line 883
    :goto_6
    :try_start_1
    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v3, v0, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "result":I
    .end local v2    # "foundCommon":Z
    throw v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 885
    .restart local v1    # "result":I
    .restart local v2    # "foundCommon":Z
    :catch_0
    move-exception v3

    .line 886
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v0, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_5
        0x45 -> :sswitch_4
        0x47 -> :sswitch_3
        0x4d -> :sswitch_2
        0x50 -> :sswitch_1
        0x55 -> :sswitch_0
        0x63 -> :sswitch_5
        0x65 -> :sswitch_4
        0x67 -> :sswitch_3
        0x6d -> :sswitch_2
        0x70 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method public parseMonth()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 661
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x52

    const/16 v3, 0x70

    const/16 v4, 0x75

    const/16 v5, 0x55

    const/16 v6, 0x50

    const/16 v7, 0x41

    if-eq v0, v7, :cond_19

    const/16 v8, 0x44

    const/16 v9, 0x63

    const/16 v10, 0x43

    const/16 v11, 0x65

    const/16 v12, 0x45

    if-eq v0, v8, :cond_16

    const/16 v8, 0x46

    if-eq v0, v8, :cond_13

    const/16 v8, 0x4a

    const/16 v13, 0x61

    if-eq v0, v8, :cond_b

    const/16 v8, 0x53

    if-eq v0, v8, :cond_8

    if-eq v0, v13, :cond_19

    const/16 v8, 0x64

    if-eq v0, v8, :cond_16

    const/16 v8, 0x66

    if-eq v0, v8, :cond_13

    const/16 v8, 0x6a

    if-eq v0, v8, :cond_b

    const/16 v4, 0x73

    if-eq v0, v4, :cond_8

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 770
    goto/16 :goto_4

    .line 739
    :pswitch_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 740
    .local v0, "curr":C
    if-eq v0, v10, :cond_0

    if-ne v0, v9, :cond_1f

    .line 741
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    move v0, v1

    .line 742
    const/16 v1, 0x54

    if-eq v0, v1, :cond_1

    const/16 v1, 0x74

    if-ne v0, v1, :cond_1f

    .line 743
    :cond_1
    const/16 v1, 0x9

    return v1

    .line 750
    .end local v0    # "curr":C
    :pswitch_1
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 751
    .restart local v0    # "curr":C
    const/16 v1, 0x4f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1f

    .line 752
    :cond_2
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    move v0, v1

    .line 753
    const/16 v1, 0x56

    if-eq v0, v1, :cond_3

    const/16 v1, 0x76

    if-ne v0, v1, :cond_1f

    .line 754
    :cond_3
    const/16 v1, 0xa

    return v1

    .line 699
    .end local v0    # "curr":C
    :pswitch_2
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v3

    .line 700
    .restart local v0    # "curr":C
    if-eq v0, v7, :cond_4

    if-ne v0, v13, :cond_1f

    .line 701
    :cond_4
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v4

    move v0, v3

    .line 702
    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 704
    :cond_5
    const/16 v1, 0x59

    if-eq v0, v1, :cond_6

    const/16 v1, 0x79

    if-ne v0, v1, :cond_1f

    .line 705
    :cond_6
    const/4 v1, 0x4

    return v1

    .line 703
    :cond_7
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 728
    .end local v0    # "curr":C
    :cond_8
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 729
    .restart local v0    # "curr":C
    if-eq v0, v12, :cond_9

    if-ne v0, v11, :cond_1f

    .line 730
    :cond_9
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    move v0, v1

    .line 731
    if-eq v0, v6, :cond_a

    if-ne v0, v3, :cond_1f

    .line 732
    :cond_a
    const/16 v1, 0x8

    return v1

    .line 665
    .end local v0    # "curr":C
    :cond_b
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x4e

    if-eq v0, v7, :cond_11

    if-eq v0, v5, :cond_d

    if-eq v0, v13, :cond_11

    if-ne v0, v4, :cond_c

    goto :goto_1

    .line 684
    :cond_c
    goto/16 :goto_4

    .line 676
    :cond_d
    :goto_1
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v3

    .line 677
    .restart local v0    # "curr":C
    if-eq v0, v2, :cond_10

    if-ne v0, v1, :cond_e

    goto :goto_2

    .line 679
    :cond_e
    const/16 v1, 0x4c

    if-eq v0, v1, :cond_f

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_1f

    .line 680
    :cond_f
    const/4 v1, 0x6

    return v1

    .line 678
    :cond_10
    :goto_2
    const/4 v1, 0x5

    return v1

    .line 668
    .end local v0    # "curr":C
    :cond_11
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v3

    .line 669
    .restart local v0    # "curr":C
    if-eq v0, v2, :cond_12

    if-ne v0, v1, :cond_1f

    .line 670
    :cond_12
    const/4 v1, 0x0

    return v1

    .line 688
    .end local v0    # "curr":C
    :cond_13
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 689
    .restart local v0    # "curr":C
    if-eq v0, v12, :cond_14

    if-ne v0, v11, :cond_1f

    .line 690
    :cond_14
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    move v0, v1

    .line 691
    const/16 v1, 0x42

    if-eq v0, v1, :cond_15

    const/16 v1, 0x62

    if-ne v0, v1, :cond_1f

    .line 692
    :cond_15
    const/4 v1, 0x1

    return v1

    .line 761
    .end local v0    # "curr":C
    :cond_16
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    .line 762
    .restart local v0    # "curr":C
    if-eq v0, v12, :cond_17

    if-ne v0, v11, :cond_1f

    .line 763
    :cond_17
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    move v0, v1

    .line 764
    if-eq v0, v10, :cond_18

    if-ne v0, v9, :cond_1f

    .line 765
    :cond_18
    const/16 v1, 0xb

    return v1

    .line 712
    .end local v0    # "curr":C
    :cond_19
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v7, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v7

    .line 713
    .restart local v0    # "curr":C
    if-eq v0, v6, :cond_1d

    if-ne v0, v3, :cond_1a

    goto :goto_3

    .line 718
    :cond_1a
    if-eq v0, v5, :cond_1b

    if-ne v0, v4, :cond_1f

    .line 719
    :cond_1b
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    move v0, v1

    .line 720
    const/16 v1, 0x47

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1f

    .line 721
    :cond_1c
    const/4 v1, 0x7

    return v1

    .line 714
    :cond_1d
    :goto_3
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 715
    if-eq v0, v2, :cond_1e

    if-ne v0, v1, :cond_1f

    .line 716
    :cond_1e
    const/4 v1, 0x3

    return v1

    .line 770
    .end local v0    # "curr":C
    :catch_0
    move-exception v0

    .line 773
    :cond_1f
    :goto_4
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v2, "Bad Month"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseNumber()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 577
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v0

    .line 578
    .local v0, "length":I
    const/4 v1, 0x0

    .line 579
    .local v1, "gotNum":Z
    const/4 v2, 0x0

    .line 581
    .local v2, "result":I
    nop

    :goto_0
    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v4, "No Number found"

    if-lt v3, v0, :cond_1

    .line 644
    if-eqz v1, :cond_0

    .line 645
    return v2

    .line 648
    :cond_0
    new-instance v3, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 582
    :cond_1
    iget-object v5, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    aget-char v3, v5, v3

    packed-switch v3, :pswitch_data_0

    .line 634
    if-eqz v1, :cond_2

    .line 635
    return v2

    .line 629
    :pswitch_0
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x9

    .line 630
    .end local v2    # "result":I
    .local v3, "result":I
    const/4 v1, 0x1

    .line 631
    move v2, v3

    goto :goto_1

    .line 624
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_1
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x8

    .line 625
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 626
    move v2, v3

    goto :goto_1

    .line 619
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_2
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x7

    .line 620
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 621
    move v2, v3

    goto :goto_1

    .line 614
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_3
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x6

    .line 615
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 616
    move v2, v3

    goto :goto_1

    .line 609
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_4
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x5

    .line 610
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 611
    move v2, v3

    goto :goto_1

    .line 604
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_5
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x4

    .line 605
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 606
    move v2, v3

    goto :goto_1

    .line 599
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_6
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x3

    .line 600
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 601
    move v2, v3

    goto :goto_1

    .line 594
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_7
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x2

    .line 595
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 596
    move v2, v3

    goto :goto_1

    .line 589
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_8
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x1

    .line 590
    .end local v2    # "result":I
    .restart local v3    # "result":I
    const/4 v1, 0x1

    .line 591
    move v2, v3

    goto :goto_1

    .line 584
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :pswitch_9
    mul-int/lit8 v2, v2, 0xa

    .line 585
    const/4 v1, 0x1

    .line 586
    nop

    .line 640
    :goto_1
    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_0

    .line 637
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseNumericTimeZone()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 805
    const/4 v0, 0x0

    .line 806
    .local v0, "switchSign":Z
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    .line 807
    .local v1, "first":C
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 808
    const/4 v0, 0x1

    goto :goto_0

    .line 809
    :cond_0
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_3

    :goto_0
    nop

    .line 813
    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 814
    .local v2, "oindex":I
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v3

    .line 815
    .local v3, "tz":I
    const/16 v4, 0x960

    if-ge v3, v4, :cond_2

    .line 817
    div-int/lit8 v4, v3, 0x64

    mul-int/lit8 v4, v4, 0x3c

    rem-int/lit8 v5, v3, 0x64

    add-int/2addr v4, v5

    .line 818
    .local v4, "offset":I
    if-eqz v0, :cond_1

    .line 819
    neg-int v5, v4

    return v5

    .line 821
    :cond_1
    return v4

    .line 816
    .end local v4    # "offset":I
    :cond_2
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Numeric TimeZone out of range"

    invoke-direct {v4, v5, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 810
    .end local v2    # "oindex":I
    .end local v3    # "tz":I
    :cond_3
    new-instance v2, Ljava/text/ParseException;

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v4, "Bad Numeric TimeZone"

    invoke-direct {v2, v4, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public parseTimeZone()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 782
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 785
    aget-char v0, v1, v0

    .line 786
    .local v0, "test":C
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 789
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseAlphaTimeZone()I

    move-result v1

    return v1

    .line 787
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumericTimeZone()I

    move-result v1

    return v1

    .line 783
    .end local v0    # "test":C
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v2, "No more characters"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public peekChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 531
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 532
    aget-char v0, v1, v0

    return v0

    .line 534
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v2, "No more characters"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

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

    .line 542
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 543
    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 544
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 545
    nop

    .line 551
    return-void

    .line 546
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v2, "Wrong char"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 549
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v2, "No more characters"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

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

    .line 558
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 559
    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 560
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 561
    return v1

    .line 563
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 566
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v2, "No more characters"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipUntilNumber()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 482
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 496
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_1

    .line 493
    :pswitch_0
    return-void

    .line 496
    :goto_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/text/ParseException;

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v3, "No Number Found"

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    nop

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

    .line 509
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v0

    .line 510
    .local v0, "len":I
    nop

    :goto_0
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-lt v1, v0, :cond_0

    .line 523
    return-void

    .line 511
    :cond_0
    iget-object v2, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    .line 520
    return-void

    .line 516
    :cond_1
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 517
    goto :goto_0
.end method
