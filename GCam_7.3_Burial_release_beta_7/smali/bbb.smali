.class public final Lbbb;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbb;->a:Lpnh;

    return-void
.end method

.method public static a(Lpnh;)Lbbb;
    .locals 1

    new-instance v0, Lbbb;

    invoke-direct {v0, p0}, Lbbb;-><init>(Lpnh;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 1

    const-string v0, "tf_af_key"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbbb;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
