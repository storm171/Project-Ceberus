.class abstract Lorg/joda/time/chrono/BasicGJChronology;
.super Lorg/joda/time/chrono/BasicChronology;
.source "BasicGJChronology.java"


# static fields
.field private static final FEB_29:J = 0x12fd73400L

.field private static final MAX_DAYS_PER_MONTH_ARRAY:[I

.field private static final MAX_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

.field private static final MIN_DAYS_PER_MONTH_ARRAY:[I

.field private static final MIN_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

.field private static final serialVersionUID:J = 0x7d53cd7eccL


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 42
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/joda/time/chrono/BasicGJChronology;->MIN_DAYS_PER_MONTH_ARRAY:[I

    .line 45
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/joda/time/chrono/BasicGJChronology;->MAX_DAYS_PER_MONTH_ARRAY:[I

    .line 53
    new-array v1, v0, [J

    sput-object v1, Lorg/joda/time/chrono/BasicGJChronology;->MIN_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

    .line 54
    new-array v0, v0, [J

    sput-object v0, Lorg/joda/time/chrono/BasicGJChronology;->MAX_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

    .line 56
    nop

    .line 57
    nop

    .line 58
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    const/16 v5, 0xb

    if-ge v2, v5, :cond_0

    .line 59
    sget-object v5, Lorg/joda/time/chrono/BasicGJChronology;->MIN_DAYS_PER_MONTH_ARRAY:[I

    aget v5, v5, v2

    int-to-long v5, v5

    const-wide/32 v7, 0x5265c00

    mul-long v5, v5, v7

    .line 61
    add-long/2addr v0, v5

    .line 62
    sget-object v5, Lorg/joda/time/chrono/BasicGJChronology;->MIN_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

    add-int/lit8 v6, v2, 0x1

    aput-wide v0, v5, v6

    .line 64
    sget-object v5, Lorg/joda/time/chrono/BasicGJChronology;->MAX_DAYS_PER_MONTH_ARRAY:[I

    aget v2, v5, v2

    int-to-long v9, v2

    mul-long v9, v9, v7

    .line 66
    add-long/2addr v3, v9

    .line 67
    sget-object v2, Lorg/joda/time/chrono/BasicGJChronology;->MAX_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

    aput-wide v3, v2, v6

    .line 58
    move v2, v6

    goto :goto_0

    .line 69
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_1
    .array-data 4
        0x1f
        0x1d
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 76
    return-void
.end method


# virtual methods
.method getDaysInMonthMax(I)I
    .locals 1

    .line 134
    sget-object v0, Lorg/joda/time/chrono/BasicGJChronology;->MAX_DAYS_PER_MONTH_ARRAY:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    return p1
.end method

.method getDaysInMonthMaxForSet(JI)I
    .locals 2

    .line 139
    const/16 v0, 0x1c

    if-gt p3, v0, :cond_0

    const/4 v1, 0x1

    if-ge p3, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicGJChronology;->getDaysInMonthMax(J)I

    move-result v0

    :cond_1
    return v0
.end method

.method getDaysInYearMonth(II)I
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    sget-object p1, Lorg/joda/time/chrono/BasicGJChronology;->MAX_DAYS_PER_MONTH_ARRAY:[I

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    return p1

    .line 128
    :cond_0
    sget-object p1, Lorg/joda/time/chrono/BasicGJChronology;->MIN_DAYS_PER_MONTH_ARRAY:[I

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    return p1
.end method

.method getMonthOfYear(JI)I
    .locals 12

    .line 93
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicGJChronology;->getYearMillis(I)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const/16 v0, 0xa

    shr-long/2addr p1, v0

    long-to-int p2, p1

    .line 98
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result p1

    const/4 p3, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/16 v6, 0xb

    const/16 v7, 0xc

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x7

    const v11, 0x27e949

    if-eqz p1, :cond_7

    const p1, 0xea515a

    if-ge p2, p1, :cond_3

    const p1, 0x7528ad

    if-ge p2, p1, :cond_1

    if-ge p2, v11, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x4d3f64

    if-ge p2, p1, :cond_9

    goto :goto_1

    :cond_1
    const p1, 0x9bc85f

    if-ge p2, p1, :cond_2

    goto :goto_2

    :cond_2
    const p1, 0xc3b1a8

    if-ge p2, p1, :cond_c

    goto :goto_3

    :cond_3
    const p1, 0x160c39e

    if-ge p2, p1, :cond_5

    const p1, 0x1123aa3

    if-ge p2, p1, :cond_4

    goto :goto_4

    :cond_4
    const p1, 0x13a23ec

    if-ge p2, p1, :cond_f

    goto :goto_5

    :cond_5
    const p1, 0x188ace7

    if-ge p2, p1, :cond_6

    goto :goto_6

    :cond_6
    const p1, 0x1af4c99

    if-ge p2, p1, :cond_12

    goto :goto_7

    :cond_7
    const p1, 0xe907c3

    if-ge p2, p1, :cond_d

    const p1, 0x73df16

    if-ge p2, p1, :cond_a

    if-ge p2, v11, :cond_8

    :goto_0
    const/4 p3, 0x1

    goto :goto_8

    :cond_8
    const p1, 0x4bf5cd

    if-ge p2, p1, :cond_9

    :goto_1
    goto :goto_8

    :cond_9
    const/4 p3, 0x3

    goto :goto_8

    :cond_a
    const p1, 0x9a7ec8

    if-ge p2, p1, :cond_b

    :goto_2
    const/4 p3, 0x4

    goto :goto_8

    :cond_b
    const p1, 0xc26811

    if-ge p2, p1, :cond_c

    :goto_3
    const/4 p3, 0x5

    goto :goto_8

    :cond_c
    const/4 p3, 0x6

    goto :goto_8

    :cond_d
    const p1, 0x15f7a07

    if-ge p2, p1, :cond_10

    const p1, 0x110f10c

    if-ge p2, p1, :cond_e

    :goto_4
    const/4 p3, 0x7

    goto :goto_8

    :cond_e
    const p1, 0x138da55

    if-ge p2, p1, :cond_f

    :goto_5
    const/16 p3, 0x8

    goto :goto_8

    :cond_f
    const/16 p3, 0x9

    goto :goto_8

    :cond_10
    const p1, 0x1876350

    if-ge p2, p1, :cond_11

    :goto_6
    const/16 p3, 0xa

    goto :goto_8

    :cond_11
    const p1, 0x1ae0302

    if-ge p2, p1, :cond_12

    :goto_7
    const/16 p3, 0xb

    goto :goto_8

    :cond_12
    const/16 p3, 0xc

    :goto_8
    return p3
.end method

.method getTotalMillisByYearMonth(II)J
    .locals 2

    .line 144
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    sget-object p1, Lorg/joda/time/chrono/BasicGJChronology;->MAX_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

    add-int/lit8 p2, p2, -0x1

    aget-wide v0, p1, p2

    return-wide v0

    .line 147
    :cond_0
    sget-object p1, Lorg/joda/time/chrono/BasicGJChronology;->MIN_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

    add-int/lit8 p2, p2, -0x1

    aget-wide v0, p1, p2

    return-wide v0
.end method

.method getYearDifference(JJ)J
    .locals 7

    .line 153
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicGJChronology;->getYear(J)I

    move-result v0

    .line 154
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/BasicGJChronology;->getYear(J)I

    move-result v1

    .line 157
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/BasicGJChronology;->getYearMillis(I)J

    move-result-wide v2

    sub-long/2addr p1, v2

    .line 158
    invoke-virtual {p0, v1}, Lorg/joda/time/chrono/BasicGJChronology;->getYearMillis(I)J

    move-result-wide v2

    sub-long/2addr p3, v2

    .line 161
    const-wide v2, 0x12fd73400L

    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    .line 162
    invoke-virtual {p0, v1}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result v4

    const-wide/32 v5, 0x5265c00

    if-eqz v4, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    sub-long/2addr p3, v5

    goto :goto_0

    .line 166
    :cond_0
    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    sub-long/2addr p1, v5

    .line 171
    :cond_1
    :goto_0
    sub-int/2addr v0, v1

    .line 172
    cmp-long v1, p1, p3

    if-gez v1, :cond_2

    .line 173
    add-int/lit8 v0, v0, -0x1

    .line 175
    :cond_2
    int-to-long p1, v0

    return-wide p1
.end method

.method isLeapDay(J)Z
    .locals 2

    .line 81
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicGJChronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicGJChronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method setYear(JI)J
    .locals 2

    .line 180
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicGJChronology;->getYear(J)I

    move-result v0

    .line 181
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicGJChronology;->getDayOfYear(JI)I

    move-result v1

    .line 182
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicGJChronology;->getMillisOfDay(J)I

    move-result p1

    .line 184
    const/16 p2, 0x3b

    if-le v1, p2, :cond_1

    .line 185
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 187
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 189
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 195
    add-int/lit8 v1, v1, 0x1

    .line 200
    :cond_1
    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p0, p3, p2, v1}, Lorg/joda/time/chrono/BasicGJChronology;->getYearMonthDayMillis(III)J

    move-result-wide p2

    .line 201
    int-to-long v0, p1

    add-long/2addr p2, v0

    .line 203
    return-wide p2
.end method
