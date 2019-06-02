.class public Lorg/joda/time/tz/CachedDateTimeZone;
.super Lorg/joda/time/DateTimeZone;
.source "CachedDateTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/tz/CachedDateTimeZone$Info;
    }
.end annotation


# static fields
.field private static final cInfoCacheMask:I

.field private static final serialVersionUID:J = 0x4bf18272d9b4ccbdL


# instance fields
.field private final transient iInfoCache:[Lorg/joda/time/tz/CachedDateTimeZone$Info;

.field private final iZone:Lorg/joda/time/DateTimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    :try_start_0
    const-string v0, "org.joda.time.tz.CachedDateTimeZone.size"

    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const/4 v0, 0x0

    .line 45
    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 48
    const/16 v0, 0x200

    goto :goto_2

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 53
    const/4 v2, 0x0

    .line 54
    :goto_1
    if-lez v0, :cond_1

    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_1
    shl-int v0, v1, v2

    .line 61
    :goto_2
    sub-int/2addr v0, v1

    sput v0, Lorg/joda/time/tz/CachedDateTimeZone;->cInfoCacheMask:I

    .line 62
    return-void
.end method

.method private constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/DateTimeZone;-><init>(Ljava/lang/String;)V

    .line 84
    sget v0, Lorg/joda/time/tz/CachedDateTimeZone;->cInfoCacheMask:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iput-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iInfoCache:[Lorg/joda/time/tz/CachedDateTimeZone$Info;

    .line 88
    iput-object p1, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    .line 89
    return-void
.end method

.method private createInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;
    .locals 7

    .line 152
    const-wide v0, -0x100000000L

    and-long/2addr p1, v0

    .line 153
    new-instance v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-object v1, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-direct {v0, v1, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;-><init>(Lorg/joda/time/DateTimeZone;J)V

    .line 155
    const-wide v1, 0xffffffffL

    or-long/2addr v1, p1

    .line 156
    move-object v3, v0

    .line 158
    :goto_0
    iget-object v4, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v4, p1, p2}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v4

    .line 159
    cmp-long v6, v4, p1

    if-eqz v6, :cond_1

    cmp-long p1, v4, v1

    if-lez p1, :cond_0

    .line 160
    goto :goto_1

    .line 162
    :cond_0
    nop

    .line 163
    new-instance p1, Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-object p2, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-direct {p1, p2, v4, v5}, Lorg/joda/time/tz/CachedDateTimeZone$Info;-><init>(Lorg/joda/time/DateTimeZone;J)V

    iput-object p1, v3, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    .line 164
    move-object v3, p1

    move-wide p1, v4

    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static forZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/tz/CachedDateTimeZone;
    .locals 1

    .line 68
    instance-of v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;

    if-eqz v0, :cond_0

    .line 69
    check-cast p0, Lorg/joda/time/tz/CachedDateTimeZone;

    return-object p0

    .line 71
    :cond_0
    new-instance v0, Lorg/joda/time/tz/CachedDateTimeZone;

    invoke-direct {v0, p0}, Lorg/joda/time/tz/CachedDateTimeZone;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0
.end method

.method private getInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;
    .locals 7

    .line 140
    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v2, v1

    .line 141
    iget-object v1, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iInfoCache:[Lorg/joda/time/tz/CachedDateTimeZone$Info;

    .line 142
    sget v3, Lorg/joda/time/tz/CachedDateTimeZone;->cInfoCacheMask:I

    and-int/2addr v3, v2

    .line 143
    aget-object v4, v1, v3

    .line 144
    if-eqz v4, :cond_0

    iget-wide v5, v4, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    shr-long/2addr v5, v0

    long-to-int v0, v5

    if-eq v0, v2, :cond_1

    .line 145
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone;->createInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-result-object v4

    .line 146
    aput-object v4, v1, v3

    .line 148
    :cond_1
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 127
    if-ne p0, p1, :cond_0

    .line 128
    const/4 p1, 0x1

    return p1

    .line 130
    :cond_0
    instance-of v0, p1, Lorg/joda/time/tz/CachedDateTimeZone;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    check-cast p1, Lorg/joda/time/tz/CachedDateTimeZone;

    iget-object p1, p1, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 133
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getNameKey(J)Ljava/lang/String;
    .locals 1

    .line 99
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone;->getInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getNameKey(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOffset(J)I
    .locals 1

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone;->getInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getOffset(J)I

    move-result p1

    return p1
.end method

.method public getStandardOffset(J)I
    .locals 1

    .line 107
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone;->getInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getStandardOffset(J)I

    move-result p1

    return p1
.end method

.method public getUncachedZone()Lorg/joda/time/DateTimeZone;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->isFixed()Z

    move-result v0

    return v0
.end method

.method public nextTransition(J)J
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public previousTransition(J)J
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->previousTransition(J)J

    move-result-wide p1

    return-wide p1
.end method
