.class final synthetic Lehx;
.super Ljava/lang/Object;

# interfaces
.implements Llus;


# instance fields
.field private final a:Lehz;


# direct methods
.method public constructor <init>(Lehz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lehx;->a:Lehz;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lehx;->a:Lehz;

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, v0, Lehz;->a:Leia;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Leia;->a(Z)V

    return-void
.end method
