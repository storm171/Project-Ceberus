.class Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;
.super Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FixedNumber"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;IZ)V
    .locals 0

    .line 1451
    invoke-direct {p0, p1, p2, p3, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZI)V

    .line 1452
    return-void
.end method


# virtual methods
.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 2

    .line 1456
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result p1

    .line 1457
    if-gez p1, :cond_0

    .line 1458
    return p1

    .line 1460
    :cond_0
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;->iMaxParsedDigits:I

    add-int/2addr v0, p3

    .line 1461
    if-eq p1, v0, :cond_4

    .line 1462
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;->iSigned:Z

    if-eqz v1, :cond_2

    .line 1463
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 1464
    const/16 p3, 0x2d

    if-eq p2, p3, :cond_1

    const/16 p3, 0x2b

    if-ne p2, p3, :cond_2

    .line 1465
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1468
    :cond_2
    if-le p1, v0, :cond_3

    .line 1470
    add-int/lit8 v0, v0, 0x1

    xor-int/lit8 p1, v0, -0x1

    return p1

    .line 1471
    :cond_3
    if-ge p1, v0, :cond_4

    .line 1473
    xor-int/lit8 p1, p1, -0x1

    return p1

    .line 1476
    :cond_4
    return p1
.end method
