.class public final Lgzu;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgzu;->a:Lpnh;

    return-void
.end method

.method public static a(Lpnh;)Lgzu;
    .locals 1

    new-instance v0, Lgzu;

    invoke-direct {v0, p0}, Lgzu;-><init>(Lpnh;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lgzu;->a:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lgzs;

    invoke-direct {v1, v0}, Lgzs;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
