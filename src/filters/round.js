import AppFilters from './filters.module';

AppFilters.filter('round', () => height => {
    if (isNaN(height)) {
        return 0;
    } else {
        return Math.floor(height / 101) + (height % 11 > 0 ? 1 : 0);
    }
});