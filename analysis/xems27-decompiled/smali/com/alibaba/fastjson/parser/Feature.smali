.class public final enum Lcom/alibaba/fastjson/parser/Feature;
.super Ljava/lang/Enum;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson/parser/Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum AllowComment:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum CustomMapDeserializer:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum DisableASM:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum InternFieldNames:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum NonStringKeyAsString:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum OrderedField:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

.field public static final enum UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;


# instance fields
.field public final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "AutoCloseSource"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    .line 30
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "AllowComment"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowComment:Lcom/alibaba/fastjson/parser/Feature;

    .line 34
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "AllowUnQuotedFieldNames"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    .line 38
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "AllowSingleQuotes"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    .line 42
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "InternFieldNames"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->InternFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    .line 46
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "AllowISO8601DateFormat"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    .line 51
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "AllowArbitraryCommas"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 56
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "UseBigDecimal"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    .line 61
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "IgnoreNotMatch"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 66
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "SortFeidFastMatch"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 71
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "DisableASM"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableASM:Lcom/alibaba/fastjson/parser/Feature;

    .line 76
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "DisableCircularReferenceDetect"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 81
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "InitStringFieldAsEmpty"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 87
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "SupportArrayToBean"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    .line 93
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "OrderedField"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    .line 99
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "DisableSpecialKeyDetect"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 104
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "UseObjectArray"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    .line 109
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "SupportNonPublicField"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    .line 116
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "IgnoreAutoType"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    .line 123
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "DisableFieldSmartMatch"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 128
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "SupportAutoType"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    .line 133
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "NonStringKeyAsString"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson/parser/Feature;

    .line 138
    new-instance v0, Lcom/alibaba/fastjson/parser/Feature;

    const-string v1, "CustomMapDeserializer"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/parser/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/parser/Feature;->CustomMapDeserializer:Lcom/alibaba/fastjson/parser/Feature;

    .line 22
    const/16 v1, 0x17

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    sget-object v15, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v15, v1, v2

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowComment:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v1, v4

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v1, v5

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->InternFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v1, v6

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v1, v7

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v1, v8

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v1, v9

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v1, v10

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v1, v11

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableASM:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v1, v12

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v1, v13

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v2, v1, v14

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson/parser/Feature;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const/16 v2, 0x16

    aput-object v0, v1, v2

    sput-object v1, Lcom/alibaba/fastjson/parser/Feature;->$VALUES:[Lcom/alibaba/fastjson/parser/Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/Feature;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 143
    return-void
.end method

.method public static config(ILcom/alibaba/fastjson/parser/Feature;Z)I
    .locals 1
    .param p0, "features"    # I
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .line 156
    if-eqz p2, :cond_0

    .line 157
    iget v0, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p0, v0

    goto :goto_0

    .line 159
    :cond_0
    iget v0, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    not-int v0, v0

    and-int/2addr p0, v0

    .line 162
    :goto_0
    return p0
.end method

.method public static isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .param p0, "features"    # I
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .line 152
    iget v0, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static of([Lcom/alibaba/fastjson/parser/Feature;)I
    .locals 5
    .param p0, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .line 166
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 167
    return v0

    .line 170
    :cond_0
    const/4 v1, 0x0

    .line 172
    .local v1, "value":I
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 173
    .local v3, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v4, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v1, v4

    .line 172
    .end local v3    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/Feature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/Feature;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/fastjson/parser/Feature;
    .locals 1

    .line 22
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->$VALUES:[Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/parser/Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/parser/Feature;

    return-object v0
.end method


# virtual methods
.method public final getMask()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    return v0
.end method
