.class Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Fraction"
.end annotation


# instance fields
.field private final iFieldType:Lorg/joda/time/DateTimeFieldType;

.field protected iMaxDigits:I

.field protected iMinDigits:I


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;II)V
    .locals 0

    .line 1783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1784
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    .line 1786
    const/16 p1, 0x12

    if-le p3, p1, :cond_0

    .line 1787
    goto :goto_0

    .line 1786
    :cond_0
    move p1, p3

    .line 1789
    :goto_0
    iput p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMinDigits:I

    .line 1790
    iput p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    .line 1791
    return-void
.end method

.method private getFractionData(JLorg/joda/time/DateTimeField;)[J
    .locals 7

    .line 1871
    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v0

    .line 1873
    iget p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    .line 1875
    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 1876
    const-wide/16 v2, 0x1

    goto :goto_1

    .line 1894
    :pswitch_0
    const-wide v2, 0xde0b6b3a7640000L

    goto :goto_1

    .line 1893
    :pswitch_1
    const-wide v2, 0x16345785d8a0000L

    goto :goto_1

    .line 1892
    :pswitch_2
    const-wide v2, 0x2386f26fc10000L

    goto :goto_1

    .line 1891
    :pswitch_3
    const-wide v2, 0x38d7ea4c68000L

    goto :goto_1

    .line 1890
    :pswitch_4
    const-wide v2, 0x5af3107a4000L

    goto :goto_1

    .line 1889
    :pswitch_5
    const-wide v2, 0x9184e72a000L

    goto :goto_1

    .line 1888
    :pswitch_6
    const-wide v2, 0xe8d4a51000L

    goto :goto_1

    .line 1887
    :pswitch_7
    const-wide v2, 0x174876e800L

    goto :goto_1

    .line 1886
    :pswitch_8
    const-wide v2, 0x2540be400L

    goto :goto_1

    .line 1885
    :pswitch_9
    const-wide/32 v2, 0x3b9aca00

    goto :goto_1

    .line 1884
    :pswitch_a
    const-wide/32 v2, 0x5f5e100

    goto :goto_1

    .line 1883
    :pswitch_b
    const-wide/32 v2, 0x989680

    goto :goto_1

    .line 1882
    :pswitch_c
    const-wide/32 v2, 0xf4240

    goto :goto_1

    .line 1881
    :pswitch_d
    const-wide/32 v2, 0x186a0

    goto :goto_1

    .line 1880
    :pswitch_e
    const-wide/16 v2, 0x2710

    goto :goto_1

    .line 1879
    :pswitch_f
    const-wide/16 v2, 0x3e8

    goto :goto_1

    .line 1878
    :pswitch_10
    const-wide/16 v2, 0x64

    goto :goto_1

    .line 1877
    :pswitch_11
    const-wide/16 v2, 0xa

    .line 1896
    :goto_1
    mul-long v4, v0, v2

    div-long/2addr v4, v2

    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    .line 1897
    nop

    .line 1903
    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v5, 0x0

    mul-long p1, p1, v2

    div-long/2addr p1, v0

    aput-wide p1, v4, v5

    const/4 p1, 0x1

    int-to-long p2, p3

    aput-wide p2, v4, p1

    return-object v4

    .line 1900
    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .line 1907
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .line 1794
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 11

    .line 1911
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1913
    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1915
    nop

    .line 1916
    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    mul-long v2, v2, v4

    .line 1917
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 1918
    :goto_0
    if-ge v8, v1, :cond_1

    .line 1919
    add-int v9, p3, v8

    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 1920
    const/16 v10, 0x30

    if-lt v9, v10, :cond_1

    const/16 v10, 0x39

    if-le v9, v10, :cond_0

    .line 1921
    goto :goto_1

    .line 1923
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 1924
    div-long/2addr v2, v4

    .line 1925
    add-int/lit8 v9, v9, -0x30

    int-to-long v9, v9

    mul-long v9, v9, v2

    add-long/2addr v6, v9

    .line 1926
    nop

    .line 1927
    goto :goto_0

    .line 1929
    :cond_1
    :goto_1
    div-long/2addr v6, v4

    .line 1931
    if-nez v8, :cond_2

    .line 1932
    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 1935
    :cond_2
    const-wide/32 v1, 0x7fffffff

    cmp-long p2, v6, v1

    if-lez p2, :cond_3

    .line 1936
    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 1939
    :cond_3
    new-instance p2, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    sget-object v2, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/DurationField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-direct {p2, v1, v2, v0}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    .line 1944
    long-to-int v0, v6

    invoke-virtual {p1, p2, v0}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeField;I)V

    .line 1946
    add-int/2addr p3, v8

    return p3
.end method

.method protected printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1813
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p4

    .line 1814
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMinDigits:I

    .line 1818
    :try_start_0
    invoke-virtual {p4, p2, p3}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1822
    nop

    .line 1824
    const-wide/16 v1, 0x0

    const/16 v3, 0x30

    cmp-long v4, p2, v1

    if-nez v4, :cond_1

    .line 1825
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 1826
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 1828
    :cond_0
    return-void

    .line 1832
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->getFractionData(JLorg/joda/time/DateTimeField;)[J

    move-result-object p2

    .line 1833
    const/4 p3, 0x0

    aget-wide v1, p2, p3

    .line 1834
    const/4 p4, 0x1

    aget-wide v4, p2, p4

    long-to-int p2, v4

    .line 1836
    const-wide/32 v4, 0x7fffffff

    and-long/2addr v4, v1

    cmp-long v6, v4, v1

    if-nez v6, :cond_2

    .line 1837
    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1839
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1842
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1843
    nop

    .line 1844
    :goto_2
    if-ge v2, p2, :cond_3

    .line 1845
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1846
    add-int/lit8 v0, v0, -0x1

    .line 1847
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 1850
    :cond_3
    if-ge v0, p2, :cond_7

    .line 1852
    :goto_3
    if-ge v0, p2, :cond_5

    .line 1853
    if-le v2, p4, :cond_5

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_4

    .line 1854
    goto :goto_4

    .line 1856
    :cond_4
    add-int/lit8 p2, p2, -0x1

    .line 1857
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1859
    :cond_5
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v2, p2, :cond_7

    .line 1860
    nop

    :goto_5
    if-ge p3, v2, :cond_6

    .line 1861
    invoke-virtual {v1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1860
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 1863
    :cond_6
    return-void

    .line 1867
    :cond_7
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1868
    return-void

    .line 1819
    :catch_0
    move-exception p2

    .line 1820
    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendUnknownString(Ljava/lang/Appendable;I)V

    .line 1821
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1800
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;)V

    .line 1801
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1806
    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p3

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p2, v0, v1}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    .line 1807
    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;)V

    .line 1808
    return-void
.end method
