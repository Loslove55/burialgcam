.class public final enum Llpn;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Llpn;

.field public static final enum b:Llpn;

.field public static final enum c:Llpn;

.field private static final synthetic g:[Llpn;


# instance fields
.field public final d:I

.field public final e:I

.field public final f:Lmpu;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Llpn;

    sget-object v5, Lmpu;->e:Lmpu;

    const-string v1, "MPEG_4"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llpn;-><init>(Ljava/lang/String;IIILmpu;)V

    sput-object v6, Llpn;->a:Llpn;

    new-instance v0, Llpn;

    sget-object v12, Lmpu;->g:Lmpu;

    const-string v8, "WEBM"

    const/4 v9, 0x1

    const/16 v10, 0x9

    const/4 v11, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Llpn;-><init>(Ljava/lang/String;IIILmpu;)V

    sput-object v0, Llpn;->b:Llpn;

    new-instance v0, Llpn;

    sget-object v6, Lmpu;->f:Lmpu;

    const-string v2, "THREE_GPP"

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Llpn;-><init>(Ljava/lang/String;IIILmpu;)V

    sput-object v0, Llpn;->c:Llpn;

    const/4 v1, 0x3

    new-array v1, v1, [Llpn;

    sget-object v2, Llpn;->a:Llpn;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Llpn;->b:Llpn;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Llpn;->g:[Llpn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILmpu;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Llpn;->d:I

    iput p4, p0, Llpn;->e:I

    iput-object p5, p0, Llpn;->f:Lmpu;

    return-void
.end method

.method public static a(Llqq;)Z
    .locals 2

    invoke-interface {p0}, Llqq;->e()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static values()[Llpn;
    .locals 1

    sget-object v0, Llpn;->g:[Llpn;

    invoke-virtual {v0}, [Llpn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llpn;

    return-object v0
.end method
