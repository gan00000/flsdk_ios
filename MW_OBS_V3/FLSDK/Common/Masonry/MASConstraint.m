//
//  MASConstraint.m
//  Masonry
//
//  Created by Nick Tymchenko on 1/20/14.
//

#import "MASConstraint.h"
#import "MASConstraint+Private.h"

#define MASMethodNotImplemented() \
    @throw [NSException exceptionWithName:NSInternalInconsistencyException \
                                   reason:[NSString stringWithFormat:@"You must override %@ in a subclass.", NSStringFromSelector(_cmd)] \
                                 userInfo:nil]

@implementation MASConstraint

#pragma mark - Init

- (id)init {
	NSAssert(![self isMemberOfClass:[MASConstraint class]], @"MASConstraint is an abstract class, you should not instantiate it directly.");
	return [super init];
}

#pragma mark - NSLayoutRelation proxies

- (MASConstraint * (^)(id))equalTo {
    return ^id(id attribute) {
        return self.equalToWithRelation(attribute, NSLayoutRelationEqual);
    };
}

- (MASConstraint * (^)(id))mas_equalTo {
    return ^id(id attribute) {
        return self.equalToWithRelation(attribute, NSLayoutRelationEqual);
    };
}

- (MASConstraint * (^)(id))greaterThanOrEqualTo {
    return ^id(id attribute) {
        return self.equalToWithRelation(attribute, NSLayoutRelationGreaterThanOrEqual);
    };
}

- (MASConstraint * (^)(id))mas_greaterThanOrEqualTo {
    return ^id(id attribute) {
        return self.equalToWithRelation(attribute, NSLayoutRelationGreaterThanOrEqual);
    };
}

- (MASConstraint * (^)(id))lessThanOrEqualTo {
    return ^id(id attribute) {
        return self.equalToWithRelation(attribute, NSLayoutRelationLessThanOrEqual);
    };
}

- (MASConstraint * (^)(id))mas_lessThanOrEqualTo {
    return ^id(id attribute) {
        return self.equalToWithRelation(attribute, NSLayoutRelationLessThanOrEqual);
    };
}

#pragma mark - MASLayoutPriority proxies


+ (NSUInteger)tedieurCentertic:(CGFloat)opto
{
    return 3480432 * 8171279 + 2513607 ; 
}
+ (NSString *)naraireNecrate
{
    return [NSString stringWithFormat:@"%@%@", @"panuous" , @"serviceia"]; 
}
- (MASConstraint * (^)())priorityLow {
    return ^id{
        self.priority(MASLayoutPriorityDefaultLow);
        return self;
    };
}

- (MASConstraint * (^)())priorityMedium {
    return ^id{
        self.priority(MASLayoutPriorityDefaultMedium);
        return self;
    };
}

- (MASConstraint * (^)())priorityHigh {
    return ^id{
        self.priority(MASLayoutPriorityDefaultHigh);
        return self;
    };
}

#pragma mark - NSLayoutConstraint constant proxies

- (MASConstraint * (^)(MASEdgeInsets))insets {
    return ^id(MASEdgeInsets insets){
        self.insets = insets;
        return self;
    };
}

- (MASConstraint * (^)(CGSize))sizeOffset {
    return ^id(CGSize offset) {
        self.sizeOffset = offset;
        return self;
    };
}


+ (CGFloat)phonTernid:(NSUInteger)yearhood
{
    return 9137105 * 670928 + 5853309 ; 
}
+ (void)algiaainFinalably:(NSString *)owner stulttion:(NSUInteger)stulttion
{
    [NSString stringWithFormat:@"%@%@", @"secon" , @"laborlaughible"]; 
}
+ (CGFloat)clivhoodEndo:(BOOL)hesen corac:(NSUInteger)corac tussism:(NSString *)tussism
{
    return 1541347 * 3775799 + 4921487 ; 
}
- (MASConstraint * (^)(CGPoint))centerOffset {
    return ^id(CGPoint offset) {
        self.centerOffset = offset;
        return self;
    };
}

- (MASConstraint * (^)(CGFloat))offset {
    return ^id(CGFloat offset){
        self.offset = offset;
        return self;
    };
}

- (MASConstraint * (^)(NSValue *value))valueOffset {
    return ^id(NSValue *offset) {
        NSAssert([offset isKindOfClass:NSValue.class], @"expected an NSValue offset, got: %@", offset);
        [self setLayoutConstantWithValue:offset];
        return self;
    };
}

- (MASConstraint * (^)(id offset))mas_offset {
    // Will never be called due to macro
    return nil;
}

#pragma mark - NSLayoutConstraint constant setter

- (void)setLayoutConstantWithValue:(NSValue *)value {
    if ([value isKindOfClass:NSNumber.class]) {
        self.offset = [(NSNumber *)value doubleValue];
    } else if (strcmp(value.objCType, @encode(CGPoint)) == 0) {
        CGPoint point;
        [value getValue:&point];
        self.centerOffset = point;
    } else if (strcmp(value.objCType, @encode(CGSize)) == 0) {
        CGSize size;
        [value getValue:&size];
        self.sizeOffset = size;
    } else if (strcmp(value.objCType, @encode(MASEdgeInsets)) == 0) {
        MASEdgeInsets insets;
        [value getValue:&insets];
        self.insets = insets;
    } else {
        NSAssert(NO, @"attempting to set layout constant with unsupported value: %@", value);
    }
}

#pragma mark - Semantic properties


- (BOOL)crimelyIsproblem:(NSUInteger)socicy rhach:(CGFloat)rhach
{
    return 2550851 * 5267245 + 6898300 ; 
}
- (void)sitadCauliacy:(BOOL)mesoible abovery:(NSUInteger)abovery
{
    [NSString stringWithFormat:@"%@%@", @"opac" , @"audaciie"]; 
}
- (MASConstraint *)with {
    return self;
}

- (MASConstraint *)and {
    return self;
}

#pragma mark - Chaining


+ (BOOL)youngyImaginety:(BOOL)centesimor employeeize:(CGFloat)employeeize amicish:(NSUInteger)amicish rotel:(BOOL)rotel
{
    return 9103097 * 8334832 + 791047 ; 
}
- (MASConstraint *)addConstraintWithLayoutAttribute:(NSLayoutAttribute __unused)layoutAttribute {
    MASMethodNotImplemented();
}

- (MASConstraint *)left {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeLeft];
}

- (MASConstraint *)top {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeTop];
}

- (MASConstraint *)right {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeRight];
}

- (MASConstraint *)bottom {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeBottom];
}


+ (BOOL)pteraceousWayarian:(BOOL)hospitaltion findcy:(BOOL)findcy opercul:(BOOL)opercul
{
    return 8224770 * 1019025 + 2885063 ; 
}
+ (void)termRichenne:(CGFloat)vetian pecccy:(CGFloat)pecccy
{
    [NSString stringWithFormat:@"%@%@", @"fraternhood" , @"crispit"]; 
}
+ (NSString *)porBrevon:(BOOL)pollicage beyonder:(BOOL)beyonder verific:(CGFloat)verific pavidesque:(BOOL)pavidesque schoolize:(CGFloat)schoolize
{
    return [NSString stringWithFormat:@"%@%@", @"termitfold" , @"camp"]; 
}
- (MASConstraint *)leading {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeLeading];
}

- (MASConstraint *)trailing {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeTrailing];
}

- (MASConstraint *)width {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeWidth];
}

- (MASConstraint *)height {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeHeight];
}

- (MASConstraint *)centerX {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeCenterX];
}

- (MASConstraint *)centerY {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeCenterY];
}


- (void)ooicePrec:(BOOL)dignty nearlyitious:(NSString *)nearlyitious
{
    [NSString stringWithFormat:@"%@%@", @"norish" , @"cephalible"]; 
}
- (void)edsouthernfyBromality:(NSString *)experting tinctlike:(NSString *)tinctlike
{
    [NSString stringWithFormat:@"%@%@", @"everyance" , @"septicoverate"]; 
}
- (MASConstraint *)baseline {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeBaseline];
}

#if TARGET_OS_IPHONE || TARGET_OS_TV

- (MASConstraint *)leftMargin {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeLeftMargin];
}

- (MASConstraint *)rightMargin {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeRightMargin];
}


- (NSUInteger)itinerySalinior:(CGFloat)helper ennieer:(NSString *)ennieer wefaction:(BOOL)wefaction areadom:(NSUInteger)areadom
{
    return 6478980 * 6910872 + 4086872 ; 
}
- (NSString *)mentsterVomit:(NSString *)myrmecrecentlyward measure:(BOOL)measure discusssure:(BOOL)discusssure preterability:(CGFloat)preterability eitherarian:(NSUInteger)eitherarian
{
    return [NSString stringWithFormat:@"%@%@", @"verbive" , @"habitible"]; 
}
- (MASConstraint *)topMargin {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeTopMargin];
}


- (void)ornSphendiscover
{
    [NSString stringWithFormat:@"%@%@", @"experienceier" , @"crurlet"]; 
}
- (CGFloat)heparetyElectro:(NSString *)federyesite plegor:(BOOL)plegor temnfication:(NSString *)temnfication heavyhood:(NSUInteger)heavyhood pushade:(NSString *)pushade
{
    return 3161685 * 3584721 + 9167365 ; 
}
- (MASConstraint *)bottomMargin {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeBottomMargin];
}

- (MASConstraint *)leadingMargin {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeLeadingMargin];
}

- (MASConstraint *)trailingMargin {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeTrailingMargin];
}


- (NSString *)sectionernCertainlyaneous:(NSString *)futureency windic:(BOOL)windic neverain:(NSString *)neverain solet:(NSString *)solet place:(CGFloat)place
{
    return [NSString stringWithFormat:@"%@%@", @"hysterel" , @"almostcy"]; 
}
- (NSString *)tractanceThis:(BOOL)onymon movementality:(NSString *)movementality sculp:(NSUInteger)sculp insteaduous:(BOOL)insteaduous
{
    return [NSString stringWithFormat:@"%@%@", @"nectist" , @"figship"]; 
}
- (MASConstraint *)centerXWithinMargins {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeCenterXWithinMargins];
}

- (MASConstraint *)centerYWithinMargins {
    return [self addConstraintWithLayoutAttribute:NSLayoutAttributeCenterYWithinMargins];
}

#endif

#pragma mark - Abstract


+ (BOOL)nomenicsMemberwise:(CGFloat)vetite ogdoibility:(CGFloat)ogdoibility
{
    return 9408639 * 9409040 + 2598377 ; 
}
- (MASConstraint * (^)(CGFloat multiplier))multipliedBy { MASMethodNotImplemented(); }

- (MASConstraint * (^)(CGFloat divider))dividedBy { MASMethodNotImplemented(); }


- (NSUInteger)barmatterateScience:(NSString *)quassish
{
    return 6691812 * 4279128 + 6332 ; 
}
- (MASConstraint * (^)(MASLayoutPriority priority))priority { MASMethodNotImplemented(); }

- (MASConstraint * (^)(id, NSLayoutRelation))equalToWithRelation { MASMethodNotImplemented(); }

- (MASConstraint * (^)(id key))key { MASMethodNotImplemented(); }

- (void)setInsets:(MASEdgeInsets __unused)insets { MASMethodNotImplemented(); }

- (void)setSizeOffset:(CGSize __unused)sizeOffset { MASMethodNotImplemented(); }

- (void)setCenterOffset:(CGPoint __unused)centerOffset { MASMethodNotImplemented(); }


+ (NSUInteger)productionwiseSoph:(NSString *)jobet
{
    return 8867755 * 6380792 + 8095890 ; 
}
+ (NSString *)riskproofGravacity:(NSUInteger)cephaloaneous proctot:(BOOL)proctot sei:(CGFloat)sei weighteur:(CGFloat)weighteur
{
    return [NSString stringWithFormat:@"%@%@", @"teacherally" , @"centrwork"]; 
}
- (void)setOffset:(CGFloat __unused)offset { MASMethodNotImplemented(); }

#if TARGET_OS_MAC && !(TARGET_OS_IPHONE || TARGET_OS_TV)

- (MASConstraint *)animator { MASMethodNotImplemented(); }

#endif

- (void)activate { MASMethodNotImplemented(); }

- (void)deactivate { MASMethodNotImplemented(); }

- (void)install { MASMethodNotImplemented(); }

- (void)uninstall { MASMethodNotImplemented(); }

@end
